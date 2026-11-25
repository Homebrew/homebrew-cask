cask "arturia-software-center" do
  version "2.13.0.3440"
  sha256 "69c1208c7aaa01562f64151860dc9056f1f70f1d4a5bf9d8d4708325d6fe08e5"

  url "https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__#{version.dots_to_underscores}.pkg"
  name "Arturia Software Center"
  desc "Installer and license activation for Arturia products"
  homepage "https://www.arturia.com/technology/asc"

  livecheck do
    url "https://www.arturia.com/support/downloads-manuals"
    regex(/href=.*?Arturia[._-]Software[._-]Center[._-]+v?(\d+(?:[._]\d+)+)\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  auto_updates true
  depends_on :macos

  pkg "Arturia_Software_Center__#{version.dots_to_underscores}.pkg"

  uninstall launchctl: "com.Arturia.ArturiaSoftwareCenterAgent",
            pkgutil:   [
              "com.Arturia.ArturiaSoftwareCenter.fonts",
              "com.Arturia.ArturiaSoftwareCenter.resources",
            ]

  zap delete: [
        "/Library/Arturia/Arturia Software Center",
        "/Library/ArturiaSC",
      ],
      trash:  [
        "~/Library/Caches/com.Arturia.ArturiaSoftwareCenter",
        "~/Library/Saved Application State/com.Arturia.ArturiaSoftwareCenter.savedState",
        "~/Library/WebKit/com.Arturia.ArturiaSoftwareCenter",
      ],
      rmdir:  "/Library/Arturia"
end
