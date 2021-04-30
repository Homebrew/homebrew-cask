cask "rightfont" do
  version "5.9.0,2817"
  sha256 :no_check

  url "https://rightfontapp.com/update/rightfont.zip"
  name "RightFont"
  desc "Font manager that helps preview, install, sync and manage fonts"
  homepage "https://rightfontapp.com/"

  livecheck do
    url "https://rightfontapp.com/update/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "RightFont #{version.major}.app"
end
