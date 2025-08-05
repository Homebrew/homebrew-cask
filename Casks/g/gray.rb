cask "gray" do
  version "0.17.0"
  sha256 "631e13cf28bae804e7e1a77cddaf2277f91d2de0c45c6fd7805a7c0eac627edd"

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  name "Gray"
  desc "Tool to set light or dark appearance on a per-app basis"
  homepage "https://github.com/zenangst/Gray"

  depends_on macos: ">= :mojave"

  app "Gray.app"

  zap trash: [
    "~/Library/Application Scripts/com.zenangst.Gray",
    "~/Library/Caches/com.zenangst.Gray",
    "~/Library/Group Containers/com.zenangst.Gray",
    "~/Library/HTTPStorages/com.zenangst.Gray",
    "~/Library/Preferences/com.zenangst.Gray.plist",
    "~/Library/Saved Application State/com.zenangst.Gray.savedState",
  ]
end
