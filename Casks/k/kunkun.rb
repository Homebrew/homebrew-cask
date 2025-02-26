cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "a092b1cd60a4de52e800f45606ced8131472bbe7baa87e4b2da74d15794a402c",
         intel: "c2644548b2b28b19df99fae694f6569d1a794613851c8496c096736679acf600"

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
