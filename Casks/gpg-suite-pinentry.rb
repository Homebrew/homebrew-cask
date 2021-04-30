cask "gpg-suite-pinentry" do
  version "2020.2,100"
  sha256 "e2ede6b317d53d1e321342a6f7dd5ab6b123a4900aa8f1eab89b29051a2a4742"

  url "https://releases.gpgtools.org/GPG_Suite-#{version.before_comma}.dmg"
  name "GPG Suite Pinentry"
  desc "Pinentry GUI for GPG Suite"
  homepage "https://gpgtools.org/"

  livecheck do
    url "https://gpgtools.org/releases/gka/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: [
    "gpg-suite",
    "gpg-suite-nightly",
  ]
  depends_on macos: ">= :sierra"

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

  uninstall pkgutil:   [
    "org.gpgtools.pinentry.*",
    "org.gpgtools.checkprivatekey.pkg",
    "org.gpgtools.updater.pkg",
  ],
            launchctl: "org.gpgtools.updater",
            quit:      "org.gpgtools.pinentry-mac",
            delete:    "/usr/local/MacGPG2"

  zap trash: "~/Library/Preferences/org.gpgtools.common.plist"

  caveats do
    files_in_usr_local

    <<~EOS
      You may need to set "pinentry-program" in `~/.gnupg/gpg-agent.conf` as follows:

        pinentry-program /usr/local/MacGPG2/libexec/pinentry-mac.app/Contents/MacOS/pinentry-mac
    EOS
  end
end
