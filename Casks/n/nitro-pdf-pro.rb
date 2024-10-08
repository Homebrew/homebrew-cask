cask "nitro-pdf-pro" do
  version "14.4"
  sha256 "da6f911f3af1b364882f1386c29378788e168752fd2ee52ac5f48da66fd955f1"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro_#{version}.dmg"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://www.gonitro.com/pdfpen"

  livecheck do
    url "https://www.gonitro.com/product-details/downloads/mac"
    regex(/href=.*Nitro%20PDF%20Pro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Nitro PDF Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro.retail",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.retail.sfl*",
    "~/Library/Containers/com.gonitro.NitroPDFPro.retail",
  ]
end
