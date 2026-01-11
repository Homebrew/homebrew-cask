cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.20"
  sha256 arm:   "f7e0dc9bd3f974c6b8a61edc37bbfd53bb33d6278956123309c086747ea569f0",
         intel: "81d7e462254ec3ffb7a0bb0db9b47ce747f1b640de2fb3800936226192823da8"

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
