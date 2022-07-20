cask "kubernetic" do
  version "4.3.0"
  sha256 "61919e54afa08214c5781f9546b96929016d282f1f732151ccad3d024afacac3"

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
