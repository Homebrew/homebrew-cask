cask "kubernetic" do
  version "3.2.0"
  sha256 "220b15f754bccdafe5355d2b3989a8dc44113c4e42a30826cb63ceccec0ed0e3"

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
