cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.29.0"
  sha256 arm:   "06c2b4b8691ddaae6bdf66263491351d53e67919e14db570daf0a2143befe021",
         intel: "babeb31667d2ba00d0c7eab75a91105a81c008aa29001fb1e95ee5719f8e2f98"

  url "https://www.mulesoft.com/downloads/studio/latest/AnypointStudio-#{version}-macos#{arch}.zip",
      referer: "https://www.mulesoft.com/api/products"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    url "https://docs.mulesoft.com/release-notes/studio/anypoint-studio"
    regex(/Anypoint\s+Studio\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "AnypointStudio.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/AnypointStudio*.diag"

  zap trash: "~/Library/Preferences/studio.product.plist"
end
