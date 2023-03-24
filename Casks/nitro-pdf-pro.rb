cask "nitro-pdf-pro" do
  version "13.3.1"
  sha256 "f8838b72ae3821466d2f5a2cdd27c71305ecb3cf35dcfa13d52f6de954c24e69"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro%20Retail_#{version}.dmg",
      verified: "downloads.gonitro.com/macos/"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://pdfpen.com/"

  livecheck do
    url "https://pdfpen.com/pdfpenpro/download_thanks/"
    regex(/href=.*?Retail[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Nitro PDF Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro.retail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.retail.sfl2",
    "~/Library/Containers/com.gonitro.NitroPDFPro.retail",
  ]
end
