cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.31"
  sha256 arm:   "13e89b72f302082827b1cf62af405d7316158309936eacf6340c4b54d7f3d9da",
         intel: "9cd2e24973a2f29da363e3907bbaa1ba044da393624e17e81f89edc37fd721a6"

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
