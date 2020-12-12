cask "boxcryptor" do
  version "2.38.1090"
  sha256 "974d097017bdc1377a62fa4e9e51033636198659fc9353372233cde0e5094285"

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :sierra"

  app "Boxcryptor.app"
end
