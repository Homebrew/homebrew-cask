cask "flow" do
  version "6.2.0.2076"
  sha256 :no_check

  url "https://cdn.getflow.com/darwin_x64/Flow.zip"
  name "Flow"
  desc "Task and project management software"
  homepage "https://www.getflow.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Flow.app"

  zap trash: [
    "~/.config/configstore/flow-desktop.json",
    "~/Library/Application Support/Flow",
    "~/Library/Caches/com.metalab.flow-mac",
    "~/Library/HTTPStorages/com.metalab.flow-mac",
    "~/Library/Preferences/com.metalab.flow-mac.plist",
  ]
end
