cask "bossa" do
  version "1.9.1"
  sha256 "ef325525d2ce1fa6078732e5aa0c16cf78114bd3cf867016c4b948022d1cb31f"

  url "https://github.com/shumatech/BOSSA/releases/download/#{version}/bossa-#{version}.dmg",
      verified: "github.com/shumatech/BOSSA/"
  name "bossa"
  homepage "https://www.shumatech.com/web/products/bossa"

  app "BOSSA.app"
  binary "bossac"
  binary "bossash"

  caveats do
    requires_rosetta
  end
end
