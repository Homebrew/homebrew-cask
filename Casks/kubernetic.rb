cask "kubernetic" do
  version "2.11.1"
  sha256 "2af1cdb480992b35f195e5c37aaec9af099fd89b29690156f22eaa02d42e8802"

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
