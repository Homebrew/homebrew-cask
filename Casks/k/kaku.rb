cask "kaku" do
  version "0.27.1"
  sha256 "b62f7e2afa11528d66850f87765db5fd04182b79e5ee0499d199ae087909c389"

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
