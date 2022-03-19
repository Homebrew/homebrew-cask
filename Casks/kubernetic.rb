cask "kubernetic" do
  version "3.3.0"
  sha256 "67888d67d9d301471c65c431b54f496d1c5a3c574c41028cf189796b6f93233a"

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
