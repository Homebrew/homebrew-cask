cask "sejda-pdf" do
  version "7.6.0"
  sha256 "b2ece6a00b216ff5fc1fc23867b4105d2373eba17fd63a69ab303aaac19c0e13"

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
