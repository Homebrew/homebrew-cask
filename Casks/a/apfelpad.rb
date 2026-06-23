cask "apfelpad" do
  version "0.6.1"
  sha256 "3a03849f778fdc2891b9c5234dc77cb6ca3e6eb07fc2a2b10743a52656eedd35"

  url "https://github.com/Arthur-Ficial/apfelpad/releases/download/v#{version}/apfelpad-macos-arm64.zip",
      verified: "github.com/Arthur-Ficial/apfelpad/"
  name "apfelpad"
  desc "Formula notepad for natural language, using on-device models"
  homepage "https://apfelpad.franzai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on arch: :arm64
  depends_on formula: "apfel"
  depends_on macos: :tahoe

  app "apfelpad.app"

  zap trash: [
    "~/Library/Application Support/apfelpad",
    "~/Library/Caches/com.fullstackoptimization.apfelpad",
    "~/Library/HTTPStorages/com.fullstackoptimization.apfelpad",
    "~/Library/Preferences/com.fullstackoptimization.apfelpad.plist",
  ]
end
