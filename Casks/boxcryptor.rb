cask "boxcryptor" do
  version "2.39.1119"
  sha256 "b6415b07a0b9e73bf4314d19e319e3dbfdcfdfea1eda379a0c2a241bfb214a9c"

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :sierra"

  app "Boxcryptor.app"
end
