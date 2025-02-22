cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.27"
  sha256 arm:   "e4994cfb335ab8aa806bef965a033feb61ce64251bff8d216fbdc91a42dfc130",
         intel: "b336c4c9af8c9dc8daf6b95c0d841fbef2d4d6a14f67e81fd75bfb295d92f530"

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
