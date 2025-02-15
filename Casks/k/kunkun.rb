cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.22"
  sha256 arm:   "5bb4e13f98303ff7625637710b97c5f3aa677a48bd69eb7ab7d7015fd6178062",
         intel: "dd203f31c3f2a32d57d86eb9d3f7188bd3073fdca9665720027c483f3f965d00"

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
  depends_on macos: ">= :high_sierra"

  app "kunkun.app"

  zap trash: [
    "~/Library/Application Support/sh.kunkun.desktop",
    "~/Library/Logs/sh.kunkun.desktop",
    "~/Library/Preferences/sh.kunkun.desktop.plist",
    "~/Library/Saved Application State/sh.kunkun.desktop.savedState",
  ]
end
