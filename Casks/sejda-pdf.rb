cask "sejda-pdf" do
  version "7.5.4"
  sha256 "285b5ea4c099543e0cb7732380d985a30a040eeea80e5f9426fea3c3c81058f3"

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
