cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.2"
  sha256 arm:   "9841cbd09df73575fe54168d8348354c377a04f6a95818cb6b44d4fb3b4ab823",
         intel: "2c7963ec4a6ff274a0646995e37271f09452965add5a954f3aef6fc6c2f69a12"

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
