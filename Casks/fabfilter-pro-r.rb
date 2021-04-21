cask "fabfilter-pro-r" do
  version "1.10"
  sha256 "76143741ee304b8a1f5fa20001fa7990e8dae8f5cdd2104243047adceed8b419"

  url "https://download.fabfilter.com/ffpror#{version.no_dots}.dmg"
  name "FabFilter Pro-R"
  desc "Reverb plug-in"
  homepage "https://www.fabfilter.com/products/pro-r-reverb-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/ffpror(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-R #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-R.#{version.major}",
  ]
end
