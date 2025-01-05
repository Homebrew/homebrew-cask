cask "nitro-pdf-pro" do
  version "14.6"
  sha256 "245b61ca56aa70fe39aa1c028bfaa0bb4054ed55ae2c5b9e09232751c0901374"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro_#{version}.dmg"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://www.gonitro.com/pdfpen"

  livecheck do
    url "https://www.gonitro.com/product-details/downloads/mac"
    regex(/href=.*Nitro%20PDF%20Pro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Nitro PDF Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro.retail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.retail.sfl*",
    "~/Library/Containers/com.gonitro.NitroPDFPro.retail",
  ]
end
