cask "gpg-suite-no-mail" do
  version "2021.1,105"
  sha256 "383bd6ab4791ee51e0f67955ad1ab70bb3a2a1e5c71f6a7f42f53b92684106e0"

  url "https://releases.gpgtools.org/GPG_Suite-#{version.before_comma}_#{version.after_comma}.dmg"
  name "GPG Suite (without GPG Mail)"
  desc "Tools to protect your files"
  homepage "https://gpgtools.org/"

  livecheck do
    url "https://gpgtools.org/releases/gka/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: [
    "gpg-suite",
    "gpg-suite-nightly",
    "gpg-suite-pinentry",
  ], formula: "gpg"
  depends_on macos: ">= :mojave"

  pkg "Install.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # preinstall.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2", # Libmacgpg_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_3", # LibmacgpgXPC_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_4", # GPGMail_14_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_5", # GPGMail_13_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_6", # GPGMail_12_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_7", # GPGMailLoader_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_8", # GPGServices_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_9", # GPGKeychain_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_10", # GPGPreferences_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_11", # MacGPG2.1_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_12", # Updater_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_13", # pinentry_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_14", # version.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_15", # key.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_16", # CheckPrivateKey.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall_postflight do
    ["gpg", "gpg2", "gpg-agent"].map { |exec_name| "/usr/local/bin/#{exec_name}" }.each do |exec|
      File.rm(exec) if File.exist?(exec) && File.readlink(exec).include?("MacGPG2")
    end
  end

  uninstall script:    {
    executable: "#{staged_path}/Uninstall.app/Contents/Resources/GPG Suite Uninstaller.app/Contents/Resources/uninstall.sh",
    sudo:       true,
  },
            pkgutil:   "org.gpgtools.*",
            quit:      [
              "org.gpgtools.gpgkeychainaccess",
              "org.gpgtools.gpgkeychain",
              "org.gpgtools.gpgservices",
              # TODO: add "killall -kill gpg-agent"
            ],
            launchctl: [
              "org.gpgtools.Libmacgpg.xpc",
              "org.gpgtools.macgpg2.fix",
              "org.gpgtools.macgpg2.shutdown-gpg-agent",
              "org.gpgtools.macgpg2.updater",
              "org.gpgtools.macgpg2.gpg-agent",
              "org.gpgtools.updater",
            ],
            delete:    [
              "/Library/Services/GPGServices.service",
              "/usr/local/MacGPG2",
              "/private/etc/paths.d/MacGPG2",
              "/private/etc/manpaths.d/MacGPG2",
              "/private/tmp/gpg-agent",
              "/Library/PreferencePanes/GPGPreferences.prefPane",
              "/Library/Application Support/GPGTools",
              "/Library/Frameworks/Libmacgpg.framework",
            ]

  zap trash: [
    "~/Library/Services/GPGServices.service",
    "~/Library/PreferencePanes/GPGPreferences.prefPane",
    "~/Library/LaunchAgents/org.gpgtools.*",
    "~/Library/Frameworks/Libmacgpg.framework",
    "~/Library/Caches/org.gpgtools.gpg*",
    "~/Library/Application Support/GPGTools",
    "~/Library/Preferences/org.gpgtools.*",
  ]

  caveats do
    files_in_usr_local
  end
end
