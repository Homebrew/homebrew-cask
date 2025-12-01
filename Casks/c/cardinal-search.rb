cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "75e08461442150f72ca2a1fc2460dbc772c4bdc3020a2ff324275b1af1afe443",
         intel: "f56efbdd3d09b27f074dadbe44720c95f55bc5582a39ff8a1757066813715804"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_#{arch}.dmg"
  name "Cardinal Search"
  desc "Fastest file searching tool"
  homepage "https://github.com/cardisoft/Cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  zap trash: [
    "~/Library/Application Support/com.cardinal.one",
    "~/Library/Caches/com.cardinal.one",
    "~/Library/Preferences/com.cardinal.one.plist",
    "~/Library/Webkit/com.cardinal.one",
  ]
end
