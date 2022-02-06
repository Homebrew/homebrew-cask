cask 'free-gpgmail' do
  name "Free-GPGMail"
  desc "A modification of the Apple Mail plugin for GnuPG encrypted e-mails, so it does not require a support plan."
  homepage "https://github.com/Free-GPGMail/Free-GPGMail"
  auto_updates false
  depends_on macos: ">= :mojave"
  depends_on cask: "gpg-suite-no-mail"

  preflight do
    system "rm", "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_*.mailbundle"
  end

  if MacOS.version <= :mojave
    version '2021.3'
    sha256 '7b4eaf2d52ddc1519dfec4087f09bad018657fde87a87021904075f55ac00377'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_3-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_3.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_3.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_3.mailbundle"
  elsif MacOS.version <= :catalina
    version '2021.3'
    sha256 'c2fda8cc9a52825cf0c0a9d954036e215076db5ec8b898c35d16d306aa6b1ea4'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_4-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_4.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_4.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_4.mailbundle"
  elsif MacOS.version <= :big_sur
    version '2021.3'
    sha256 '438519fa8b5ed04081553efd58b5edf52b6847ea3719fe9b1331e97c8021ca43'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_5-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_5.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_5.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_5.mailbundle"
  elsif MacOS.version >= :monterey
    version '2021.3'
    sha256 'a3e9d799ee332093303f4bf7ecc03d084e0bd3e28954cedc7d9149f660ae72e5'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_6-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_6.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_6.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_6.mailbundle"
  end

  caveats "Apple Mail plugin for GnuPG has been updated."
  caveats "To finalize installation, do the following:"
  caveats "    In Mail, go to Preferences -> General -> Manage Plugins..."
  caveats "    - Make sure that 'GPGMailLoader_*.mailbundle', if present, is disabled."
  caveats "    - Enable the 'Free-GPGMail_<version>.mailbundle'."
  caveats "    - Apply and Restart Mail."
  caveats ""
  caveats "If this is your first time installing Free-GPGMail:"
  caveats "    In Mail.app, check Preferences -> Free-GPGMail. If it says that you are in Trial Mode or Decryption Only Mode, hit Activate. It will perform a dummy activation routine."
end
