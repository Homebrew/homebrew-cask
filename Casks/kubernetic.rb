cask "kubernetic" do
  version "2.13.0"
  sha256 "c5e2fcb11f2ebb8bb1389ecf625b81a9ce8661d496fee5e86618cb6b5d819b04"

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
