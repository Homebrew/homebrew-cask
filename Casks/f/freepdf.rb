cask "freepdf" do
  version "5.1.0"
  sha256 "5682f89fb7bae09e78ee502da98d0653be10cb3d59c0d8dd44a4f4dc2fb0cea9"

  url "https://github.com/zstar1003/FreePDF/releases/download/v#{version}/FreePDF_v#{version}_macOS.dmg"
  name "FreePDF"
  desc "A free PDF reader that supports translating PDF documents"
  homepage "https://github.com/zstar1003/FreePDF"


  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FreePDF.app" 
    
  zap trash: [
    "~/Library/Application Support/FreePDF",
    "~/Library/Caches/FreePDF",
  ]
end
