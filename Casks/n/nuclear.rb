cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.42"
  sha256 arm:   "b599e5d2094c7ec32541f556db058ba270b70c5195d3c0c30642b0c4027ec4f1",
         intel: "1bad83014b172488314be34f844297ecc22319b4314ad27569071de311c32cff"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
