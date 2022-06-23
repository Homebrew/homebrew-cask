cask "nitro-pdf-pro" do
  version "13.3.0"
  sha256 "c1f12be884e56cc2407faad1c0213a868a5d6a39aff11ac4af09ea1296d6c663"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro%20Retail_#{version}.dmg",
      verified: "downloads.gonitro.com/macos/"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://pdfpen.com/"

  livecheck do
    url "https://pdfpen.com/pdfpenpro/download_thanks/"
    regex(/href=.*?Retail_(\d+(?:\.\d+)*)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "Nitro PDF Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro.retail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.retail.sfl2",
    "~/Library/Containers/com.gonitro.NitroPDFPro.retail",
  ]
end
