cask "freepdf" do
  version "5.1.1"
  sha256 "2f0509669198ba248f5a9306efe02e14f2d8b9f74ad175914347c075f55c6686"

  url "https://github.com/zstar1003/FreePDF/releases/download/v#{version}/FreePDF_v#{version}_macOS.dmg"
  name "FreePDF"
  desc "Reader that supports translating PDF documents"
  homepage "https://github.com/zstar1003/FreePDF"

  depends_on macos: ">= :big_sur"

  app "FreePDF.app"

  zap trash: [
    "~/Library/Application Support/FreePDF",
    "~/Library/Caches/FreePDF",
  ]
end
