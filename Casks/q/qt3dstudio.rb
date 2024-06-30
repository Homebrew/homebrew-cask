cask "qt3dstudio" do
  version "2.8.0"
  sha256 "bdaa9ede1c9dcf2137d14ad312bafaab08c6b37e7ad9286160240e38daf56857"

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  name "Qt 3D Studio"
  desc "Compositing tool"
  homepage "https://www.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/official_releases/qt3dstudio/"
    strategy :page_match do |page|
      version_major_minor = page[%r{href="(\d+(?:\.\d+)*)/"}i, 1]
      version_page = Homebrew::Livecheck::Strategy.page_content("#{url}#{version_major_minor}/")[:content]
      version = version_page.scan(/qt-3dstudio-opensource-mac-x64-(\d+(?:\.\d+)*)\.dmg/i)
      version[0]
    end
  end

  depends_on macos: ">= :sierra"

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"

  caveats do
    requires_rosetta
  end
end
