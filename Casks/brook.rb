cask "brook" do
  version "20200901"
  sha256 "46ead219047e4ba643addfef4e76bd09f3d927baed5497839b291fe082c4deb2"

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.dmg"
  appcast "https://github.com/txthinking/brook/releases.atom"
  name "Brook"
  homepage "https://github.com/txthinking/brook"

  app "Brook.app"
end
