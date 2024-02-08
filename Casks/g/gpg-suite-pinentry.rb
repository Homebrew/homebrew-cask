cask "gpg-suite-pinentry" do
  version "2023.3"
  sha256 "57468a4adc55d954ead4fe1f88b07eac1b70ada40fcbc810765fd521ef21eef1"

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
    "gpg-suite-no-mail",
    "homebrew/cask-versions/gpg-suite-nightly",
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
          "choiceIdentifier" => "installer_choice_4", # GPGMail_7_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_5", # GPGMail_6_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_6", # GPGMail_5_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_7", # GGPGMail_4_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_8", # GPGMail_3_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_9", # GPGMail_12_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_10", # GPGMailLoader_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_11", # GPGServices_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_12", # GPGKeychain_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_13", # GPGPreferences_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_14", # MacGPG2.1_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_15", # Updater_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_16", # pinentry_Core.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_17", # version.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_18", # key.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "installer_choice_19", # CheckPrivateKey.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall_postflight do
    ["gpg", "gpg2", "gpg-agent"].map { |exec_name| Pathname("/usr/local/bin")/exec_name }.each do |exec|
      exec.unlink if exec.exist? && exec.readlink.to_s.include?("MacGPG2")
    end
  end

  uninstall launchctl: [
              "org.gpgtools.gpgmail.enable-bundles",
              "org.gpgtools.gpgmail.patch-uuid-user",
              "org.gpgtools.gpgmail.user-uuid-patcher",
              "org.gpgtools.gpgmail.uuid-patcher",
              "org.gpgtools.Libmacgpg.xpc",
              "org.gpgtools.macgpg2.fix",
              "org.gpgtools.macgpg2.gpg-agent",
              "org.gpgtools.macgpg2.shutdown-gpg-agent",
              "org.gpgtools.macgpg2.updater",
              "org.gpgtools.updater",
            ],
            quit:      [
              "com.apple.mail",
              "org.gpgtools.gpgkeychain",
              "org.gpgtools.gpgkeychainaccess",
              "org.gpgtools.gpgmail.upgrader",
              "org.gpgtools.gpgservices",
              # TODO: add "killall -kill gpg-agent"
            ],
            script:    {
              executable: "#{staged_path}/Uninstall.app/Contents/Resources/GPG Suite Uninstaller.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   "org.gpgtools.*",
            delete:    [
              "/Library/Application Support/GPGTools",
              "/Library/Frameworks/Libmacgpg.framework",
              "/Library/Mail/Bundles.gpgmail*",
              "/Library/Mail/Bundles/GPGMail.mailbundle",
              "/Library/PreferencePanes/GPGPreferences.prefPane",
              "/Library/Services/GPGServices.service",
              "/Network/Library/Mail/Bundles/GPGMail.mailbundle",
              "/private/etc/manpaths.d/MacGPG2",
              "/private/etc/paths.d/MacGPG2",
              "/private/tmp/gpg-agent",
              "/usr/local/MacGPG2",
            ]

  zap trash: [
    "~/Containers/com.apple.mail/Data/Library/Frameworks/Libmacgpg.framework",
    "~/Library/Application Support/GPGTools",
    "~/Library/Caches/org.gpgtools.gpg*",
    "~/Library/Containers/com.apple.mail/Data/Library/Preferences/org.gpgtools.*",
    "~/Library/Frameworks/Libmacgpg.framework",
    "~/Library/HTTPStorages/org.gpgtools.*",
    "~/Library/LaunchAgents/org.gpgtools.*",
    "~/Library/Mail/Bundles/GPGMail.mailbundle",
    "~/Library/PreferencePanes/GPGPreferences.prefPane",
    "~/Library/Preferences/org.gpgtools.*",
    "~/Library/Services/GPGServices.service",
  ]

  caveats do
    files_in_usr_local

    <<~EOS
      You may need to set "pinentry-program" in `~/.gnupg/gpg-agent.conf` as follows:

        pinentry-program /usr/local/MacGPG2/libexec/pinentry-mac.app/Contents/MacOS/pinentry-mac
    EOS
  end
end
