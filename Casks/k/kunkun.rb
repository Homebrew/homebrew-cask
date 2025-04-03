cask "kunkun" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "d93fcacc2e8a1c364f1cfaa2be3b1664401e17ddf3a33c4e5caea7f4dd386aa1",
         intel: "54a88e04f148039f52f590f811eac189e622b496f81097c8860d722b9447302b"

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
