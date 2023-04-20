cask "mockplus" do
  version "3.7.1.0"
  sha256 "f9ac9457ed78346be7bd4513e1dfacb0ef730331128f3d6c43a787bfe4a96a70"

  url "https://d3h2k7ug3o5pb3.cloudfront.net/software/macos/MockplusClassic_v#{version}.zip",
      verified: "d3h2k7ug3o5pb3.cloudfront.net/software/macos/"
  name "Mockplus"
  name "摩客"
  desc "Create mockups and wireframes"
  homepage "https://www.mockplus.com/"

  livecheck do
    url "https://api.mockplus.com/v6/software/checkNewerVersionForMockupV2?name=MockplusClassic&version=latest&platform=mac"
    strategy :json do |json|
      json["value"]["version"]
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
