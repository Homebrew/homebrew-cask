cask "crypter" do
  version "5.0.0"
  sha256 "ed136dbfacae87d52493e56e0e225d13203de997c54e7ac5f159feeadfcd4b7a"

  url "https://github.com/HR/Crypter/releases/download/v#{version}/Crypter-#{version}.dmg"
  appcast "https://github.com/HR/Crypter/releases.atom"
  name "Crypter"
  desc "Innovative, convenient and secure cross-platform encryption app"
  homepage "https://github.com/HR/Crypter"

  app "Crypter.app"
end
