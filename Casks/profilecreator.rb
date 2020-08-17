cask "profilecreator" do
  version "0.3.2,201907171032-beta"
  sha256 "a4a1b45bfaa6bc83aac7ef532981aaa0c807cd17fbfb1f157980144e5d309aea"

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version.before_comma}/ProfileCreator_v#{version.before_comma}-#{version.after_comma}.dmg"
  appcast "https://github.com/erikberglund/ProfileCreator/releases.atom"
  name "ProfileCreator"
  homepage "https://github.com/erikberglund/ProfileCreator"

  depends_on macos: ">= :sierra"

  app "ProfileCreator.app"
end
