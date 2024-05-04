cask "jaspersoft-studio" do
  version "6.21.0"
  sha256 "b130dea83acec8ecefae1129b5dcf1ae97cb85f99f8892f9532906bd9cbd4af6"

  url "https://downloads.sourceforge.net/jasperstudio/JaspersoftStudio-#{version}/js-studiocomm_#{version}_macosx_x86_64.dmg",
      verified: "sourceforge.net/jasperstudio/"
  name "Jaspersoft Studio"
  desc "Eclipse-based report development tool for JasperReports"
  homepage "https://community.jaspersoft.com/downloads/community-edition/"

  # https://community.jaspersoft.com/knowledgebase/faq/faqs-on-community-edition-changes-effective-january-25-2024-r4629/
  deprecate! date: "2024-02-11", because: :repo_removed

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
