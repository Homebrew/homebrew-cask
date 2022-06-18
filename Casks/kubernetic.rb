cask "kubernetic" do
  version "4.1.0"
  sha256 "a6df26e4c530a685587f31e43b68882789514c395e96434214a162f3b6173c15"

  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg",
      verified: "kubernetic.s3.amazonaws.com/"
  name "Kubernetic"
  desc "Kubernetes desktop client"
  homepage "https://kubernetic.com/"

  livecheck do
    url "https://kubernetic.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Kubernetic.app"

  uninstall signal: [
    ["TERM", "com.kubernetic.desktop.helper"],
    ["TERM", "com.kubernetic.desktop"],
  ]

  zap trash: [
    "~/.kubernetic",
    "~/Library/Application Support/Kubernetic",
    "~/Library/Logs/Kubernetic",
    "~/Library/Preferences/com.kubernetic.desktop.*",
    "~/Library/Saved Application State/com.kubernetic.desktop.*",
  ]
end
