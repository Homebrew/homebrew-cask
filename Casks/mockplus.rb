cask "mockplus" do
  version "3.6.2.2"
  sha256 "dfae251a12ab7b1b41e269827f31c28a4e251ebfccf6884c904e9c923366f48a"

  url "https://d3h2k7ug3o5pb3.cloudfront.net/software/macos/MockplusClassic_v#{version}_auto.dmg",
      verified: "d3h2k7ug3o5pb3.cloudfront.net/software/macos/"
  name "Mockplus"
  name "摩客"
  desc "Create mockups and wireframes"
  homepage "https://www.mockplus.com/"

  livecheck do
    url "https://api.mockplus.com/v6/software/checkNewerVersionForMockupV2?name=MockplusClassic&version=latest&platform=mac"
    strategy :page_match do |page|
      JSON.parse(page)["value"]["version"]
    end
  end

  app "Mockplus Classic.app"

  zap trash: [
    "~/Library/Caches/com.mockplus.desktop.chinese",
    "~/Library/HTTPStorages/com.mockplus.desktop.chinese",
    "~/Library/HTTPStorages/com.mockplus.desktop.chinese.binarycookies",
    "~/Library/Mockplus2",
    "~/Library/Saved Application State/com.mockplus.desktop.chinese.savedState",
  ]
end
