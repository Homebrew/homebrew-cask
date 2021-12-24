cask "mqttx" do
  arch = Hardware::CPU.intel? ? "" : "universal-"

  version "1.7.0"

  if Hardware::CPU.intel?
    sha256 "50732d42411d297b529b788c6b37469c050974b3f684a6e8310840014af26ee1"
  else
    sha256 "68754d3dd83ba947ce08a5a763e6a844f01b00275322eb9f88d757d99383825e"
  end

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}-#{arch}mac.zip",
      verified: "github.com/emqx/MQTTX/"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  app "MQTTX.app"

  zap trash: [
    "~/Library/Application Support/MQTTX",
    "~/Library/Logs/MQTTX",
    "~/Library/Preferences/com.electron.mqttx.plist",
    "~/Library/Saved Application State/com.electron.mqttx.savedState",
  ]
end
