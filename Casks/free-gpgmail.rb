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
    version '2021.3.1'
    sha256 '584827bde768cad5d7160b22387add35b02e75c1e4e75894cecd30c2edbabc13'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_3-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_3.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_3.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_3.mailbundle"
  elsif MacOS.version <= :catalina
    version '2021.3.1'
    sha256 '3d1fc129589a495527601102080993db61e78f430b1cf2372a219f1a8d4c1fb3'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_4-#{version}.mailbundle.zip"
    artifact "Free-GPGMail_4.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_4.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_4.mailbundle"
  elsif MacOS.version <= :big_sur
    version '2021.3.1'
    sha256 'ee0b1a313afedb5cdf8a9703b00f35040b3109877247bb342c92a60b53944c9a'
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version}/Free-GPGMail_5-#{version}-signed.mailbundle.zip"
    artifact "Free-GPGMail_5.mailbundle", target: "#{ENV['HOME']}/Library/Mail/Bundles/Free-GPGMail_5.mailbundle"
    uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_5.mailbundle"
  elsif MacOS.version >= :monterey
    version '2021.3.1'
    sha256 'd15ae3bad7a40c98a078b5be0891dd38d43240cde7acbfd5f7ac03fafad4bbb1'
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
