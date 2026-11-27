cask "kaku" do
  version "0.31.0"
  sha256 "a4fe2e524bbfce7e7db86145499bd11696d5688bfbf3d0d3f47e84c9ef2ebb0c"

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
