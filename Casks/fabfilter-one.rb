cask "fabfilter-one" do
  version "3.33"
  sha256 "99f87b5194e8087fb9569ec59825342505526a14e4cf0385a215f8467625ab02"

  url "https://download.fabfilter.com/ffone#{version.no_dots}.dmg"
  name "FabFilter One"
  desc "Synthesizer plug-in"
  homepage "https://www.fabfilter.com/products/volcano-2-powerful-filter-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffone(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter One #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.One.#{version.major}",
  ]
end
