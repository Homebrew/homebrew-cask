cask "kubernetic" do
  version "3.4.0"
  sha256 "ac736fdb4d3f475a66345cdc7616a596b6c0c76625b4e87922548725b69b8a42"

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
