cask "hyper" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "c650b0eb9b0c3a7a8cb07f4de79d1d9a081a02a4ac7d95fa177f80bf5cb622f9",
         intel: "441d910f1393f68f50eea82f67543da625c06361813a3acd333a8f7a0d541eac"

  url "https://github.com/vercel/hyper/releases/download/v#{version}/Hyper-#{version}-mac-#{arch}.zip",
      verified: "github.com/vercel/hyper/"
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
    "~/.hyper_plugins",
    "~/.hyper.js",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*",
    "~/Library/Application Support/Hyper",
    "~/Library/Caches/co.zeit.hyper.ShipIt",
    "~/Library/Caches/co.zeit.hyper",
    "~/Library/Cookies/co.zeit.hyper.binarycookies",
    "~/Library/Logs/Hyper",
    "~/Library/Preferences/ByHost/co.zeit.hyper.ShipIt.*.plist",
    "~/Library/Preferences/co.zeit.hyper.helper.plist",
    "~/Library/Preferences/co.zeit.hyper.plist",
    "~/Library/Saved Application State/co.zeit.hyper.savedState",
  ]
end
