cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.32"
  sha256 arm:   "f9318e2dd7e3c9988dbe55d243b884ac7d5cee371ebab3d83439696c8739deee",
         intel: "190056e8cea9811efec80746bd3e6327f56e3f3a1cb0831193c6d958522a54cc"

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
