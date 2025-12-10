cask "cardinal-search" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "e9cf2b44f1ce4b8c4242e4c2bf4481d0ec5dbd286612445e25ba86a09d73237d",
         intel: "a2b4d7fea4fddd3010120cab660db461a9dd76da7aecefdd248c8a610f81379f"

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
