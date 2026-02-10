cask "nitro-pdf-pro" do
  version "14.10.4"
  sha256 "01e2bd5c9ab3e1c74bcad0bfbccac39c4d95c9bb71661d9465a97c215f697820"

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
