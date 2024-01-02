cask "jaspersoft-studio" do
  version "6.20.6"
  sha256 "14e992dc5f42910e49a4876d40ec046c36334ab8b4467d0fbef68034fd803ba5"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  name "Jaspersoft Studio"
  desc "Eclipse-based report development tool for JasperReports"
  homepage "https://community.jaspersoft.com/project/jaspersoft-studio"

  livecheck do
    url "https://sourceforge.net/projects/jasperstudio/files/"
    regex(%r{url=.*?/jasperstudio/files/JasperSoftStudio[._-]v?(\d+(?:\.\d+)+)}i)
  end

  auto_updates true

  app "Jaspersoft Studio #{version}.app"

  zap trash: [
    "~/JaspersoftWorkspace",
    "~/Library/Application Support/Jaspersoft Studio",
    "~/Library/Preferences/com.jaspersoft.studio.plist",
    "~/Library/Preferences/com.jaspersoft.studio.rcp.product.plist",
    "~/Library/Saved Application State/com.jaspersoft.studio.rcp.product.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
