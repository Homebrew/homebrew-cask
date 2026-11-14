cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.3"
  sha256 arm:   "3bf01c65896bc4abf07aeb6291d81646d145ff2e34bc8e7d458bff65592eb10a",
         intel: "c4000737a83ac8e1ae5062f84f111c51e9d9f3d5a042fbde4321e73fbc2ac822"

  url "https://github.com/pluralplay/FlClashX/releases/download/v#{version}/FlClashX-macos-#{arch}.dmg"
  name "FlClashX"
  desc "Cross-platform proxy client based on ClashMeta"
  homepage "https://github.com/pluralplay/FlClashX"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "FlClashX.app"

  zap trash: [
    "~/Library/Application Support/FlClashX",
    "~/Library/Caches/com.pluralplay.FlClashX",
    "~/Library/Preferences/com.pluralplay.FlClashX.plist",
  ]
end
