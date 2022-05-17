cask "polycom-realpresence" do
  version "3.11.3.73575"
  sha256 "5aeb338abc6def5ecd98aa6a2a2f5e8d5fe4e0adaefd55650361641bd2426242"

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg",
      verified: "downloads.polycom.com"
  name "Polycom RealPresence Desktop"
  desc "Video collaboration app"
  homepage "https://www.poly.com/us/en/products/video-conferencing/clariti/realpresence-desktop-video-conferencing-software"

  livecheck do
    url "https://www.poly.com/us/en/support/products/cloud-services-and-software/video-soft-clients/realpresence-desktop"
    regex(%r{(?:href|data-path)=.*?/RPDesktop[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  pkg "RealPresenceDesktop.pkg"

  uninstall pkgutil: "com.polycom.RealPresenceDesktop"
end
