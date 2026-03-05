cask "betterbird" do
  arch intel: "x86_64"
  os linux: "linux"

  version "140.8.0esr-bb19"

  language "en", default: true do
    sha256 "48be40d313b3b60b82e8059d66d55a7a45dc7fa2c67376018a2a5b1aa15be61a"
    "en-US"
  end
  language "de" do
    sha256 "a97024f142d37c29300f9b8d3decba57cb0410474e5afc924c164470afb35d0a"
    "de"
  end
  language "nl" do
    sha256 "3e3c268c929a800f51de22c4e4543f80a1e3982b6d6acbe30a2b02c655bca03c"
    "nl"
  end
  language "fr" do
    sha256 "1e1a30ddf5dccc141424b9244e9370bfd6e8c44c46996dadc18af929be0a8081"
    "fr"
  end
  language "it" do
    sha256 "81b8c1e214aea7449daf552ba0a4e91cd110ecfde949291bfe13716c921b9611"
    "it"
  end
  language "ja" do
    sha256 "e0a7f8c4c1fbacc06fcc3bb19e710df0b1387a2ef4c930f96a39c6c59ef7122a"
    "ja"
  end
  language "es" do
    sha256 "a7381e9776a22153ac6016bc4ab2dce768e13197b7c9086150713cb3d021555c"
    "es-ES"
  end
  language "pt" do
    sha256 "9f50115ec298ab6b2c0ff6e6e513b69c39bc6a8e3068f1a572894b9ab8769da0"
    "pt-BR"
  end
  language "ru" do
    sha256 "72ea4f747bf0ceb43b2deb43211417a874bb84a29db2abfd8ed43a5d47710f52"
    "ru"
  end

  url "https://www.betterbird.eu/downloads/LinuxArchive/betterbird-#{version}.#{language}.linux-x86_64.tar.xz"
  name "Betterbird"
  desc "Fine-tuned version of Mozilla Thunderbird with additional features"
  homepage "https://betterbird.eu/"

  livecheck do
    url "https://www.betterbird.eu/downloads/"
    regex(/Current version:\s*Betterbird\s+(\d+(?:\.\d+)+\.\d+esr-bb\d+)/i)
  end

  auto_updates true
  depends_on formula: [
    "dbus-glib",
    "hunspell",
  ]

  binary "betterbird/betterbird"

  postflight do
    apps_dir  = "#{Dir.home}/.local/share/applications"
    icon_root = "#{Dir.home}/.local/share/icons/hicolor"
    desktop = "#{Dir.home}/.local/share/applications/betterbird.desktop"

    FileUtils.mkdir_p(apps_dir)

    # --- Find the best icon shipped in the extracted app dir. ---
    # Caskstaging path contains the extracted tarball content.
    staged = Pathname.new(staged_path)

    # Candidate icon paths (we'll pick the first that exists)
    candidates = [
      staged/"betterbird/chrome/icons/default/default256.png",
      staged/"betterbird/chrome/icons/default/default128.png",
      staged/"betterbird/chrome/icons/default/default64.png",
      staged/"betterbird/chrome/icons/default/default48.png",
      staged/"betterbird/chrome/icons/default/default32.png",
      staged/"betterbird/chrome/icons/default/default24.png",
      staged/"betterbird/chrome/icons/default/default22.png",
      staged/"betterbird/chrome/icons/default/default16.png",
    ]

    icon_src = candidates.find(&:exist?)

    if icon_src
      # infer size from filename
      size = icon_src.basename.to_s[/default(\d+)\.png/, 1]
      icon_dir = "#{icon_root}/#{size}x#{size}/apps"
      FileUtils.mkdir_p(icon_dir)
      FileUtils.cp(icon_src.to_s, "#{icon_dir}/betterbird.png")
    end

    File.write(desktop, <<~EOS)
      [Desktop Entry]
      Exec=#{HOMEBREW_PREFIX}/bin/betterbird-bin %u
      Terminal=false
      Type=Application
      Icon=betterbird
      Categories=Network;Email;
      MimeType=message/rfc822;x-scheme-handler/mailto;application/x-xpinstall;application/x-extension-ics;text/calendar;text/vcard;text/x-vcard;x-scheme-handler/webcal;x-scheme-handler/webcals;x-scheme-handler/mid;
      StartupNotify=true
      StartupWMClass=betterbird
      Actions=ComposeMessage;OpenAddressBook;
      Name=Betterbird
      Comment=Send and receive mail with Betterbird
      GenericName=Mail Client
      Keywords=Email;E-mail;Newsgroup;Feed;RSS

      [Desktop Action ComposeMessage]
      Name=Write new message
      Exec=betterbird-bin -compose

      [Desktop Action OpenAddressBook]
      Name=Open address book
      Exec=betterbird-bin -addressbook
    EOS
  end

  uninstall_postflight do
    # delete desktop launcher
    FileUtils.rm("#{Dir.home}/.local/share/applications/betterbird.desktop")
    # delete icons
    %w[256 128 64 48 32 24 22 16].each do |sz|
    FileUtils.rm_r("#{Dir.home}/.local/share/icons/hicolor/#{sz}x#{sz}/apps/betterbird.png")
    end
  end
end
