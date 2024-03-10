cask "arturia-software-center" do
  version "2.7.1.2466"
  sha256 "a83e87823a4098c6c60de14733f2ce236042c0f12bd25118cad88167551a5ceb"

  url "https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__#{version.dots_to_underscores}.pkg",
      verified: "dl.arturia.net/"
  name "Arturia Software Center"
  desc "Installer for installation and license activation of Arturia products"
  homepage "https://www.arturia.com/technology/asc"

  livecheck do
    url "https://www.arturia.com/api/resources?slugs=asc&types=soft"
    regex(/\d+(?:\.\d+)+/i)
    strategy :json do |json, regex|
      json.map do |entry|
        next unless entry["platform_type"]["mac"]

        match = entry["version"]&.match(regex)
        next if match.blank?

        match.to_s
      end
    end
  end

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
