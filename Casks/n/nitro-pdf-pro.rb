cask "nitro-pdf-pro" do
  version "14.7"
  sha256 "4943e85f25a9a7fe4f979f97ad6a6d5c699223b946f47791705d1d985923172d"

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
