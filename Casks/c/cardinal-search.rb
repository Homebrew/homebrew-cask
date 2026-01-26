cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.21"
  sha256 arm:   "60de7f5faf823219214b048fe85c85ba65ae9c507076aa764a66b820f4a5c5f3",
         intel: "f7aeb25a2954271ff0b31689a0b04f5abafb3e1c8f8477c86f3093e0b5b2ce60"

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
