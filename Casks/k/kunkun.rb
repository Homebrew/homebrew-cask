cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.34"
  sha256 arm:   "c8b1b21b58b6334c05ad45d51a9e2db42c80d392cab96e1739fd0ff731b0a34f",
         intel: "54b61a9fa4ed698fb45b93c232e06d74752040821a0b1245967c5f46aca80042"

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
