cask "nitro-pdf-pro" do
  version "26.4"
  sha256 "e5872a524a90d49bb520165aa1d54dffcada7a488d96699b94e701542752fe2e"

  url "https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro_#{version}.dmg"
  name "Nitro PDF Pro"
  desc "PDF editing software"
  homepage "https://www.gonitro.com/pdf"

  livecheck do
    url "https://downloads.gonitro.com/macos/pro.rss"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :tahoe

  app "Nitro PDF Pro.app"

  uninstall quit: "com.gonitro.NitroPDFPro"

  zap trash: [
    "~/Library/Application Scripts/com.gonitro.NitroPDFPro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gonitro.nitropdfpro.sfl*",
    "~/Library/Containers/com.gonitro.NitroPDFPro",
  ]
end
