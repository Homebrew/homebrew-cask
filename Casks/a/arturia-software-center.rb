cask "arturia-software-center" do
  version "2.9.0.2873"
  sha256 "2cf395f44b684296dba878314bb2d11d582481ca43ec4f3f59878538136f6b2b"

  url "https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__#{version.dots_to_underscores}.pkg",
      verified: "dl.arturia.net/"
  name "Arturia Software Center"
  desc "Installer and license activation for Arturia products"
  homepage "https://www.arturia.com/technology/asc"

  livecheck do
    url "https://www.arturia.com/api/resources?slugs=asc&types=soft"
    strategy :json do |json|
      json.map do |item|
        next if item["platform_type"] != "mac"

        item["version"]
      end
    end
  end

  auto_updates true

  pkg "Arturia_Software_Center__#{version.dots_to_underscores}.pkg"

  uninstall launchctl: "com.Arturia.ArturiaSoftwareCenterAgent",
            pkgutil:   [
              "com.Arturia.ArturiaSoftwareCenter.fonts",
              "com.Arturia.ArturiaSoftwareCenter.resources",
            ]

  zap delete: [
        "/Library/Arturia/Arturia Software Center",
        "/Library/ArturiaSC/",
      ],
      trash:  [
        "~/Library/Caches/com.Arturia.ArturiaSoftwareCenter",
        "~/Library/Saved Application State/com.Arturia.ArturiaSoftwareCenter.savedState",
        "~/Library/WebKit/com.Arturia.ArturiaSoftwareCenter",
      ],
      rmdir:  "/Library/Arturia"
end
