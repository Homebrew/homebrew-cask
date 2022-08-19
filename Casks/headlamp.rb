cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"

  on_intel do
    sha256 "b94592a566b8bd297d8221bd34a57a6add83d1a6fa5f27fb2bfe2ff688803c3d"
  end
  on_arm do
    sha256 "b4d11c4b2ed8fc9f273dfe487f4ceb51dd743fc2408e6c7150f7b43d8f692de1"
  end

  url "https://github.com/kinvolk/headlamp/releases/download/v#{version}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/kinvolk/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://kinvolk.github.io/headlamp"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
