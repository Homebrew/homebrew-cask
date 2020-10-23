cask "rightfont" do
  version "5.9.0"
  sha256 "17539732acb77bfa7c156175b82f33f4a02e8ceb15784442752d93e10722d0f1"

  url "https://rightfontapp.com/update/rightfont.zip"
  appcast "https://rightfontapp.com/update/appcast#{version.major}.xml"
  name "RightFont"
  desc "Font manager that helps preview, install, sync and manage fonts"
  homepage "https://rightfontapp.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "RightFont #{version.major}.app"
end
