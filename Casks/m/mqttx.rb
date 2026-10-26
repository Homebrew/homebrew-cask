cask "mqttx" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.13.2"
  sha256 arm:          "3bd495aef415930821b0f8a758566fd519f28c28b2421e948bf5b8e485e9dba1",
         intel:        "03614359259f8966e950ae6da680d117ca52823a8f9e98990899713a1899e650",
         arm64_linux:  "08c4b6bb346ff40ab03ee94300dfe096fd219541c35360e15fccf17ce956d591",
         x86_64_linux: "86ee3068eab3537fd6f64e3ade02064cdc05e2d58100e16b18a427f45ad38a33"

  on_macos do
    depends_on macos: :monterey

    app "MQTTX.app"

    zap trash: [
      "~/Library/Application Support/MQTTX",
      "~/Library/Logs/MQTTX",
      "~/Library/Preferences/com.electron.mqttx.plist",
      "~/Library/Saved Application State/com.electron.mqttx.savedState",
    ]
  end
  on_linux do
    app_image "MQTTX-#{version}#{arch}.AppImage", target: "MQTTX.AppImage"

    zap trash: "~/.config/MQTTX"
  end

  url "https://github.com/emqx/MQTTX/releases/download/v#{version}/MQTTX-#{version}#{arch}.#{os}"
  name "MQTTX"
  desc "Cross-platform MQTT 5.0 Desktop Client"
  homepage "https://mqttx.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
