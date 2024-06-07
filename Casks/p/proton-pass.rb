cask "proton-pass" do
  version "1.17.5"
  sha256 :no_check

  url "https://proton.me/download/PassDesktop/darwin/universal/ProtonPass_#{version}.dmg"
  name "Proton Pass Desktop"
  desc "Client for Proton Pass"
  homepage "https://proton.me/pass"

  livecheck do
    url "https://proton.me/download/PassDesktop/darwin/universal/version.json"
    strategy :page_match do |page|
      json = JSON.parse(page)
      json["Releases"].map { |release| release["Version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Proton Pass.app"

  zap trash: [
    "~/Library/Application Support/Proton Pass",
    "~/Library/Caches/me.proton.pass.electron",
    "~/Library/Caches/me.proton.pass.electron.ShipIt",
    "~/Library/HTTPStorages/me.proton.pass.electron",
    "~/Library/Logs/Proton Pass",
    "~/Library/Preferences/me.proton.pass.electron.plist",
    "~/Library/Saved Application State/me.proton.pass.electron.savedState",
  ]
end