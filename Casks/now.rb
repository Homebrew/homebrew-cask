cask "now" do
  version "5.1.0"
  sha256 "9ccb5e20faa7560ec1bd01c9b1989dfee5897fb7de70cf42a05da49a9e088ab7"

  # github.com/zeit/now-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/Now-#{version}-mac.zip"
  appcast "https://github.com/zeit/now-desktop/releases.atom"
  name "Now"
  desc "Create deployments right from the tray menu"
  homepage "https://zeit.co/now"

  app "Now.app"

  uninstall delete: "/usr/local/bin/now",
            signal: ["TERM", "co.zeit.now"]

  zap trash: [
    "~/.now.json",
    "~/Library/Application Support/Now",
    "~/Library/Caches/co.zeit.now",
    "~/Library/Caches/co.zeit.now.ShipIt",
    "~/Library/Preferences/co.zeit.now.plist",
    "~/Library/Preferences/co.zeit.now.helper.plist",
  ]
end
