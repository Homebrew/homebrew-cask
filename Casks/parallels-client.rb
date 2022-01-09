cask "parallels-client" do
  version "18.3.0,22893"
  sha256 "30814113889352ee68f1e6aa46c40683e1520afa1c30ad1af41014afd84ebc69"

  url "https://download.parallels.com/ras/v#{version.major}/#{version.csv.first.major_minor_patch}.#{version.csv.second}/RasClient-Mac-Notarized-#{version.csv.first.major_minor_patch}-#{version.csv.second}.pkg"
  name "Parallels Client"
  desc "RDP client"
  homepage "https://www.parallels.com/products/ras/features/rdp-client/"

  livecheck do
    url "https://download.parallels.com/ras/v18/RAS%20Client%20for%20Mac%20Changelog.txt"
    strategy :page_match do |page|
      match = page.match(/Version\s*(\d+(?:\.\d+)+)\s*\((\d+)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "RasClient-Mac-Notarized-#{version.csv.first.major_minor_patch}-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.2X.Client.Mac",
            quit:    "com.2X.Client.Mac"
end
