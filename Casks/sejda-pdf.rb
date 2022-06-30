cask "sejda-pdf" do
  version "7.5.1"
  sha256 "1c223ed3bece9505a48e37b0eaf43eb77255fbc030b74a08587e80183ec81d10"

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
