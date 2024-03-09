cask "arturia-software-center" do
  version "2.7.1.2466"
  sha256 "a83e87823a4098c6c60de14733f2ce236042c0f12bd25118cad88167551a5ceb"

  url "https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__#{version.dots_to_underscores}.pkg", verified: "dl.arturia.net/"
  name "Arturia Software Center"
  desc "Manage Arturia hardware and software"
  homepage "https://www.arturia.com/technology/asc"

  livecheck do
    skip "Not available"
  end

  pkg "Arturia_Software_Center__#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: ["com.Arturia.ArturiaSoftwareCenter.fonts",
                      "com.Arturia.ArturiaSoftwareCenter.resources"]

  zap trash: [
      "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.fonts.bom",
      "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.fonts.plist",
      "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.resources.bom",
      "/var/db/receipts/com.Arturia.ArturiaSoftwareCenter.resources.plist",
      "~/Library/Caches/com.Arturia.ArturiaSoftwareCenter",
      "~/Library/WebKit/com.Arturia.ArturiaSoftwareCenter",
    "/Library/Arturia/Arturia Software Center",
  ]
end
