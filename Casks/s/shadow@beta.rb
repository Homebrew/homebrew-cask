cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10423"
  sha256 arm:   "8e8da76e078715f97cde6586edc91c683e5208e82b4b4c431489d26e42e6d2f2",
         intel: "2a1bcd09d1f627329d855f91474678338460d8ced25f898b687fad1cf872bb26"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
