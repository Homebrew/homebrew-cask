cask "fabfilter-pro-q" do
  version "3.17"
  sha256 "52f9db4e524960eb0bb9f1548372aef4915176ef9ab6e5662917341743375ed6"

  url "https://download.fabfilter.com/ffproq#{version.no_dots}.dmg"
  name "FabFilter Pro-Q"
  desc "Equalizer plug-in"
  homepage "https://www.fabfilter.com/products/pro-q-3-equalizer-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=".*?/ffproq(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-Q #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-Q.#{version.major}",
  ]
end
