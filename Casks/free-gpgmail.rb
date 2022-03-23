cask "free-gpgmail" do
  if MacOS.version <= :catalina
    version "5,2021.3.1,-unsigned"
    sha256 "3a3c9290622cc3fe8d4761050363917d009f9fa923eb32d436364f0ae9a161b9"
  elsif MacOS.version <= :big_sur
    version "5,2021.3.1,-signed"
    sha256 "ee0b1a313afedb5cdf8a9703b00f35040b3109877247bb342c92a60b53944c9a"
  elsif MacOS.version >= :monterey
    version "6,2021.3.1,"
    sha256 "d15ae3bad7a40c98a078b5be0891dd38d43240cde7acbfd5f7ac03fafad4bbb1"
  end

  url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version.csv.second}/Free-GPGMail_#{version.csv.first}-#{version.csv.second}#{version.csv.third}.mailbundle.zip"
  name "Free-GPGMail"
  desc "Apple Mail plugin for GnuPG encrypted e-mails"
  homepage "https://github.com/Free-GPGMail/Free-GPGMail"

  auto_updates false
  depends_on macos: ">= :mojave"
  depends_on cask: "gpg-suite-no-mail"

  artifact "Free-GPGMail_#{version.csv.first}.mailbundle", target: "#{ENV["HOME"]}/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"

  preflight do
    system "rm", "#{ENV["HOME"]}/Library/Mail/Bundles/Free-GPGMail_*.mailbundle"
  end

  uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"

  caveats "Apple Mail plugin for GnuPG has been updated."
  caveats "To finalize installation, do the following:"
  caveats "    In Mail, go to Preferences -> General -> Manage Plugins..."
  caveats "    - Make sure that 'GPGMailLoader_*.mailbundle', if present, is disabled."
  caveats "    - Enable the 'Free-GPGMail_<version>.mailbundle'."
  caveats "    - Apply and Restart Mail."
  caveats ""
  caveats "If this is your first time installing Free-GPGMail:"
  caveats "    In Mail.app, check Preferences -> Free-GPGMail. If it says that you are in"
  caveats "    Trial Mode or Decryption Only Mode, hit Activate. It will perform a dummy"
  caveats "    activation routine."
end
