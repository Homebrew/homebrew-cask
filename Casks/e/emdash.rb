cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "b894e82e94ee98b3ab39ff4a5c3185eaf86692c41f962557e22f0e3ddf0fe0ef",
         intel: "9dd6a02eb7c8f786e17caddc04031d894c2bfd7050e91e3a93521720918b632e"

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
