cask "freepdf" do
  version "5.1.0"
  sha256 "a4072e874854a22428070674af156a6510cc4c0f2ccd0b7075bfa852f6e06287"

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
