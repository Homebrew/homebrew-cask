cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.33"
  sha256 arm:   "589db17e81a4a1ff394c22088a7d9a6ab295cbae5c4f8ac7104083069b5a4cb1",
         intel: "176db7fc7be160b6940a83defef5081da8c59e92d2598c6d7afa638f65a72e0c"

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
