cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "b81d520df0190ba7707bb09bf6d18fe48e14b7a49dc32bea7bb44e47029be829",
         intel: "aa2257d57095d1792d3e3373c5905eb9c64426fef36b70fe575215b02ef4c715"

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
