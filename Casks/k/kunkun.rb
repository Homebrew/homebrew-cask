cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.23"
  sha256 arm:   "fd97679e4edf86e2d46ab2947525a96e0e6d4c231c6ccf2f05015b7a1dfa7589",
         intel: "04201a5d4524500088ae50cebee19da27b337bbca5230157b3a58e727f19ba06"

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
