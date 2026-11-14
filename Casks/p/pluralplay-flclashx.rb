cask "pluralplay-flclashx" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.4"
  sha256 arm:   "2e6e2f74c945995251b17275f974e076f8e2e3b4a1e29faf159b39aff7c6fa64",
         intel: "80fa42c6f0399a6879c39c66dd6aa4d548bf524c63d4a4dbf741133bba50a75d"

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
