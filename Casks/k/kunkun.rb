cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.36"
  sha256 arm:   "5aab48afbfbcf9e8b5137dff54a2d2dec2953be31097297dfe64f4dc95492080",
         intel: "4272ab386e15137e145c550e57d67dd1e1d0576e6a7eb5b9a92b2bcb1e9c294e"

  url "https://download.kunkun.sh/Kunkun-v#{version}/kunkun_#{arch}.app.tar.gz"
  name "Kunkun"
  desc "App launcher"
  homepage "https://kunkun.sh/"

  livecheck do
    url "https://updater.kunkun.sh/"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "kunkun.app"

  zap trash: [
    "~/Library/Application Support/sh.kunkun.desktop",
    "~/Library/Logs/sh.kunkun.desktop",
    "~/Library/Preferences/sh.kunkun.desktop.plist",
    "~/Library/Saved Application State/sh.kunkun.desktop.savedState",
  ]
end
