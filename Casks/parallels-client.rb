cask "parallels-client" do
  version "18.1.0,22708"
  sha256 "dea9583c7e1af302c8ad8f4362bac7318022ba5bc3dd7edcc63fa0ae9f956649"

  url "https://download.parallels.com/ras/v#{version.major}/#{version.before_comma.major_minor_patch}.#{version.after_comma}/RasClient-Mac-Notarized-#{version.before_comma.major_minor_patch}-#{version.after_comma}.pkg"
  name "Parallels Client"
  homepage "https://www.parallels.com/products/ras/features/rdp-client/"

  livecheck do
    url "https://download.parallels.com/ras/v18/RAS%20Client%20for%20Mac%20Changelog.txt"
    strategy :page_match do |page|
      match = page.match(/Version\s*(\d+(?:\.\d+)*)\s*\((\d+)\)/i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "RasClient-Mac-Notarized-#{version.before_comma.major_minor_patch}-#{version.after_comma}.pkg"

  uninstall pkgutil: "com.2X.Client.Mac",
            quit:    "com.2X.Client.Mac"
end
