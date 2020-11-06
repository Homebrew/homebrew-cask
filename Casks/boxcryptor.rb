cask "boxcryptor" do
  version "2.37.1043"
  sha256 "aca956d433ee4bb76ba29de5eeb69825d71989979753d25ce2f16ff8965000a3"

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boxcryptor.com/l/download-macosx"
  name "Boxcryptor"
  desc "Tool to encrypt files and folders in various cloud storage services"
  homepage "https://www.boxcryptor.com/en/"

  depends_on macos: ">= :sierra"

  app "Boxcryptor.app"
end
