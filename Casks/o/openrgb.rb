cask "openrgb" do
  arch arm: "ARM64", intel: "Intel"

  version "0.9,b5f46e3"
  sha256 arm:   "9d14e4ba253b45d39ddcbc52e63b9f9b6982dcca40492190f4580a6d9ef94de7",
         intel: "95725d6b7a6ba1893c24e4e347e97293d261ccedd77af9d27ec17d75e2f103a4"

  url "https://openrgb.org/releases/release_#{version.csv.first}/OpenRGB_#{version.csv.first}_MacOS_#{arch}_#{version.csv.second}.zip"
  name "OpenRGB"
  desc "Open source RGB lighting control that doesn't depend on manufacturer software"
  homepage "https://openrgb.org/"

  livecheck do
    url "https://openrgb.org/releases.html"
    regex(/href=.*?OpenRGB[._-]v?(\d+(?:\.\d+)+)[._-]MacOS[._-]#{arch}[._-](\h+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "OpenRGB.app"

  zap trash: [
    "~/.config/OpenRGB",
    "~/Library/Preferences/com.yourcompany.OpenRGB.plist",
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
  ]
end
