cask "fabfilter-pro-c" do
  version "2.12"
  sha256 "e6da95e92fbba7bc0cdda325cc67264d5d7b0709eef5579bc75960ca40a1624c"

  url "https://download.fabfilter.com/ffproc#{version.no_dots}.dmg"
  name "FabFilter Pro-C"
  desc "Compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-c-2-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ffproc(\d)(\d\d)\.dmg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "FabFilter Pro-C #{version} Installer.pkg"

  uninstall pkgutil: [
    "com.fabfilter.Pro-C.#{version.major}",
  ]
end
