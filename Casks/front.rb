cask "front" do
  version "3.29.5"
  sha256 "3c59771b33893e82f54461db11c758ae709de54454b9b8d3251d603f8adb8f44"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  name "Front"
  desc "Customer communication platform"
  homepage "https://frontapp.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
