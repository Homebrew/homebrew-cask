cask "headlamp" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.11.1"

  if Hardware::CPU.intel?
    sha256 "df3bd1c32cac93b1ce917b3a32a5548107babb1cd64ce4278e0271f6fda08c61"
  else
    sha256 "e6d9b5f6c7dd34ef2d81a235f61231f4906ac3a81c86878816d6a7610f7b65ad"
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
