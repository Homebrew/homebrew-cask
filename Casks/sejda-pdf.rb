cask "sejda-pdf" do
  version "7.5.2"
  sha256 "0f51cb443ad13ddad973732477cf4608f18605cdaaeb3a6d564c6938414cc45a"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/desktop"

  livecheck do
    url :homepage
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Sejda PDF Desktop.app"
end
