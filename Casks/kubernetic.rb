cask "kubernetic" do
  version "3.1.0"
  sha256 "aabfb1497d3d3407adc0040c8af83b189cf395d74021c508653d5d9385ed4132"

  # kubernetic.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg"
  appcast "https://kubernetic.s3.amazonaws.com/latest-mac.yml"
  name "Kubernetic"
  homepage "https://kubernetic.com/"

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
