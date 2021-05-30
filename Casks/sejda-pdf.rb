cask "sejda-pdf" do
  version "7.2.5"
  sha256 "186858622aa524dfdfeae3d16174874e4cf2c82e20c43a161f98f06245b2dfd2"

  url "https://sejda-cdn.com/downloads/sejda-desktop_#{version}.dmg",
      verified: "sejda-cdn.com/"
  name "Sejda PDF Desktop"
  homepage "https://www.sejda.com/desktop"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/mac:.*?sejda-desktop_(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Sejda PDF Desktop.app"
end
