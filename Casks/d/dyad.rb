cask "dyad" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "a2db2537565bb7951761968319d5241729ba8864dc9c34ae8a2edfe830493628",
         intel: "b731b28e808a3ac67ed3fa86b1c49ecdc0907c14da54126bc453d9982e1ca0e9"

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad-darwin-#{arch}-#{version}.zip",
      verified: "github.com/dyad-sh/dyad/"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url "https://api.dyad.sh/v1/update/stable/dyad-sh/dyad/darwin-#{arch}/0.0.0"
    regex(%r{/v?(\d+(?:\.\d+)+)/}i)
    strategy :json do |json|
      json["url"]&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "dyad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
    "~/Library/Application Support/dyad",
    "~/Library/Caches/com.electron.dyad",
    "~/Library/Caches/com.electron.dyad.ShipIt",
    "~/Library/HTTPStorages/com.electron.dyad",
    "~/Library/Logs/dyad",
    "~/Library/Preferences/com.electron.dyad.plist",
  ], rmdir: "~/dyad-apps"
end
