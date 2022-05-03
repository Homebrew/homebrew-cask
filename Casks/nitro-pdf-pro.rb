cask "nitro-pdf-pro" do
  version "13.2.1"
  sha256 "2b59fba1eedec9f2c01c2d1c19544beeca23e7f943f5dcf495674b4466e1a2d2"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro%20Retail_#{version}.dmg",
      verified: "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro%20Retail_#{version}.dmg"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://pdfpen.com/"

  livecheck do
    url "https://pdfpen.com/pdfpenpro/download_thanks/"
    strategy :page_match
    regex(/href=.*?Retail_(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Nitro PDF Pro.app"
end
