cask "boxcryptor" do
  version "2.36.1042"
  sha256 "38515f06567cf19a5f4f82ecb690ec55b51e39befa186dcba38cccf59e268192"

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :sierra"

  app "Boxcryptor.app"
end
