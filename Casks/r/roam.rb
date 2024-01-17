cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "92.0.0-beta001"
  sha256 arm:   "8d689aba4e5bc279589ac96b6e2a6d860249f183ea35eb85e54a546df8798f0e",
         intel: "f8d0bf40bce21bec67b66b5a69f13c278fe3200c32f284c68b61d0e72fe46c7d"

  url "https://download.ro.am/Roam/8a86d88cfc9da3551063102e9a4e2a83/latest/darwin/#{arch}/Roam.dmg"
  name "Roam"
  desc "Virtual office"
  homepage "https://ro.am/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roam.app"

  uninstall quit: "inc.wonder.roam"

  zap trash: [
    "~/Library/Caches/inc.wonder.roam",
    "~/Library/Caches/inc.wonder.roam.ShipIt",
    "~/Library/Preferences/inc.wonder.roam.plist",
    "~/Library/Saved Application State/inc.wonder.roam.savedState",
  ]
end
