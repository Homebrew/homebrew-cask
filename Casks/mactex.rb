cask "mactex" do
  version "2022.0321"
  sha256 "dc1983c82de2c68f1c434f734d94343959d1338adb6f55132ccce11c787badc1"

  url "https://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg",
      verified: "mirror.ctan.org/systems/mac/mactex/"
  name "MacTeX"
  desc "Full TeX Live distribution with GUI applications"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    url "https://ctan.org/texarchive/systems/mac/mactex/"
    strategy :page_match do |page|
      match = page.match(/href=.*?mactex-(\d{4})(\d{2})(\d{2})\.pkg/)
      next if match.blank?

      "#{match[1]}.#{match[2]}#{match[3]}"
    end
  end

  conflicts_with cask: [
    "basictex",
    "mactex-no-gui",
  ]
  depends_on formula: "ghostscript"
  depends_on macos: ">= :mojave"

  pkg "mactex-#{version.no_dots}.pkg",
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript9.55",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript9.55-libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          # TeXLive
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
    "org.tug.mactex.gui#{version.major}",
    "org.tug.mactex.texlive#{version.major}",
  ],
            delete:  [
              "/usr/local/texlive/#{version.major}",
              "/Applications/TeX",
              "/Library/TeX",
              "/etc/paths.d/TeX",
              "/etc/manpaths.d/TeX",
            ]

  zap trash: [
    "/usr/local/texlive/texmf-local",
    # TexShop:
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*",
    "~/Library/Application Support/TeXShop",
    "~/Library/Caches/com.apple.helpd/Generated/TeXShop Help*",
    "~/Library/Caches/TeXShop",
    "~/Library/Preferences/TeXShop.plist",
    "~/Library/TeXShop",
    # BibDesk:
    "~/Library/Application Support/BibDesk",
    "~/Library/Caches/com.apple.helpd/Generated/edu.ucsd.cs.mmccrack.bibdesk.help*",
    "~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk",
    "~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies",
    "~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist",
    # LaTeXiT:
    "~/Library/Caches/fr.chachatelier.pierre.LaTeXiT",
    "~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies",
    "~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist",
    # TeX Live Utility:
    "~/Library/Application Support/TeX Live Utility",
    "~/Library/Caches/com.apple.helpd/Generated/TeX Live Utility Help*",
  ],
      rmdir: "/usr/local/texlive"

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTex CLI tools to take effect.
    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
