cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "1ed068ee069badb56cd5adbbd888da48d5eb0ea6c33ed91d2e042626f6a498de",
         intel: "714fe75b6701bddb7010f2c2e51e79b96e5469b2dbe602007865bc9e96fa49c1"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Emdash.app"

  uninstall quit: "com.emdash.stable"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Preferences/com.emdash.stable.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
