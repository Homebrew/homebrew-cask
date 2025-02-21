cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "a923f6feb11418b0b68ea0ea7e3fdb9b017d83b216ccb7087039749db2080d14",
         intel: "dc2aa957ff65cdf607314b1fd84ad114b6d070c70b82d6ee888d5dc10af35e15"

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
