cask "freepdf" do
  version "5.1.2"
  sha256 "82a762465d00b4a7dd15f8c36cb724fabc3f5e2180d6f4b61c662a3cb8488a6e"

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
