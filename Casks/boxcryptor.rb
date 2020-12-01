cask "boxcryptor" do
  version "2.38.1086"
  sha256 "6a8e68f8152c94bc2a5ea8c8a4a475994ebb508ee29f9d99dcd9397d2ce567a8"

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :sierra"

  app "Boxcryptor.app"
end
