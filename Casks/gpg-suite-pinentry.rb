cask "gpg-suite-pinentry" do
  version "2021.2"
  sha256 "828df766dec3aa1ad4fbd29c8dd6a830d756694fae1a9f38ae78b6cfcf403f52"

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  name "GPG Suite Pinentry"
  desc "Pinentry GUI for GPG Suite"
  homepage "https://gpgtools.org/"

  livecheck do
    cask "gpg-suite"
  end

  auto_updates true
  conflicts_with cask: [
    "gpg-suite",
    "gpg-suite-nightly",
    "gpg-suite-no-mail",
  ], formula: "gpg"
  depends_on macos: ">= :mojave"

  pkg "Install.pkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1", # preinstall.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_2", # Libmacgpg_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_3", # LibmacgpgXPC_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
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
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_9", # GPGKeychain_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_10", # GPGPreferences_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_11", # MacGPG2.1_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_12", # Updater_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_13", # pinentry_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_14", # version.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_15", # key.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_16", # CheckPrivateKey.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
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
              "com.apple.mail",
              "org.gpgtools.gpgkeychainaccess",
              "org.gpgtools.gpgkeychain",
              "org.gpgtools.gpgmail.upgrader",
              "org.gpgtools.gpgservices",
              # TODO: add "killall -kill gpg-agent"
            ],
            launchctl: [
              "org.gpgtools.Libmacgpg.xpc",
              "org.gpgtools.gpgmail.patch-uuid-user",
              "org.gpgtools.macgpg2.fix",
              "org.gpgtools.macgpg2.shutdown-gpg-agent",
              "org.gpgtools.macgpg2.updater",
              "org.gpgtools.macgpg2.gpg-agent",
              "org.gpgtools.gpgmail.enable-bundles",
              "org.gpgtools.gpgmail.user-uuid-patcher",
              "org.gpgtools.gpgmail.uuid-patcher",
              "org.gpgtools.updater",
            ],
            delete:    [
              "/Library/Services/GPGServices.service",
              "/Library/Mail/Bundles/GPGMail.mailbundle",
              "/Library/Mail/Bundles.gpgmail*",
              "/Network/Library/Mail/Bundles/GPGMail.mailbundle",
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
    "~/Library/Mail/Bundles/GPGMail.mailbundle",
    "~/Library/PreferencePanes/GPGPreferences.prefPane",
    "~/Library/LaunchAgents/org.gpgtools.*",
    "~/Library/Containers/com.apple.mail/Data/Library/Preferences/org.gpgtools.*",
    "~/Library/Frameworks/Libmacgpg.framework",
    "~/Containers/com.apple.mail/Data/Library/Frameworks/Libmacgpg.framework",
    "~/Library/Caches/org.gpgtools.gpg*",
    "~/Library/Application Support/GPGTools",
    "~/Library/Preferences/org.gpgtools.*",
  ]

  caveats do
    files_in_usr_local

    <<~EOS
      You may need to set "pinentry-program" in `~/.gnupg/gpg-agent.conf` as follows:

        pinentry-program /usr/local/MacGPG2/libexec/pinentry-mac.app/Contents/MacOS/pinentry-mac
    EOS
  end
end
