cask "nitro-pdf-pro" do
  version "26.0"
  sha256 "5f1e9f846bca80a95b0faa43b11f6daf04d40be5301a3a9b8255541a5cf0f0f2"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro_#{version}.dmg"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://www.gonitro.com/pdf"

  livecheck do
    url "https://www.gonitro.com/documentation/product-downloads"
    regex(/href=.*Nitro%20PDF%20Pro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Nitro PDF Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.sfl*",
    "~/Library/Containers/com.gonitro.NitroPDFPro",
  ]
end
