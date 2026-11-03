cask "kaku" do
  version "0.28.0"
  sha256 "156afc48f477c12b95c58d519772dcb4ae774c968c0876fa96d7f648a0805dfe"

  url "https://github.com/tw93/Kaku/releases/download/V#{version}/Kaku.dmg"
  name "Kaku"
  desc "Terminal optimised for AI coding"
  homepage "https://github.com/tw93/Kaku"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Kaku.app"
  binary "#{appdir}/Kaku.app/Contents/MacOS/kaku", target: "kaku"

  zap trash: [
    "~/Library/Application Support/kaku",
    "~/Library/Caches/kaku",
    "~/Library/Preferences/fun.tw93.kaku.plist",
    "~/Library/Saved Application State/fun.tw93.kaku.savedState",
  ]
end
