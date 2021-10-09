cask "hyper" do
  version "3.1.4"

  if Hardware::CPU.intel?
    sha256 "f6038c7da47f98f12520c5af5aa08d6ef171897eda0c49b2cc8a189bf0301ffe"
    url "https://github.com/vercel/hyper/releases/download/v#{version}/Hyper-#{version}-mac-x64.zip",
        verified: "github.com/vercel/hyper/"
  else
    sha256 "339bce09a3b68b865ea8157feaaeac13f2ac80a2e661d95f9c5b6a1191ede5ac"
    url "https://github.com/vercel/hyper/releases/download/v#{version}/Hyper-#{version}-mac-arm64.zip",
        verified: "github.com/vercel/hyper/"
  end

  name "Hyper"
  desc "Terminal built on web technologies"
  homepage "https://hyper.is/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/hyper-canary"

  app "Hyper.app"
  binary "#{appdir}/Hyper.app/Contents/Resources/bin/hyper"

  zap trash: [
    "~/.hyper.js",
    "~/.hyper_plugins",
    "~/Library/Application Support/Hyper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*",
    "~/Library/Caches/co.zeit.hyper",
    "~/Library/Caches/co.zeit.hyper.ShipIt",
    "~/Library/Cookies/co.zeit.hyper.binarycookies",
    "~/Library/Logs/Hyper",
    "~/Library/Preferences/ByHost/co.zeit.hyper.ShipIt.*.plist",
    "~/Library/Preferences/co.zeit.hyper.plist",
    "~/Library/Preferences/co.zeit.hyper.helper.plist",
    "~/Library/Saved Application State/co.zeit.hyper.savedState",
  ]
end
