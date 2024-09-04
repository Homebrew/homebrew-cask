cask "apidog-europe" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.6.13"
  sha256 arm:   "78fbfa6324ec14727f2fce313e24ec9a9737bf8639bfd39577e2e73c0ec38ecf",
         intel: "02666c40ccda06d7c16586ec0f87cd18606f2d38eb344a83550e984ad8f156a2"

  url "https://file-assets.eu.apidog.com/download/#{version}/Apidog%20Europe#{arch}-#{version}.dmg"
  name "Apidog Europe"
  desc "API development platform hosted in Europe"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.eu.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Apidog Europe.app"

  zap trash: [
    "~/Library/Application Support/apidog-eu",
    "~/Library/Preferences/com.apidog.eu.app.plist",
    "~/Library/Saved Application State/com.apidog.eu.app.savedState",
  ]
end
