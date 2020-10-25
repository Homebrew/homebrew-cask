cask "nuclear" do
  version "0.6.6"
  sha256 "5620a90b90511272b3d785f3614bae735e054443059041002058b062df711e4e"

  # github.com/nukeop/nuclear/ was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}.dmg"
  appcast "https://github.com/nukeop/nuclear/releases.atom"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
