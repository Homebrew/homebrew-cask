cask "freepdf" do
  version "6.0.2"
  sha256 "95741be668c24b6bbc258adaa168b77bdd8dec5903e2c621b1e03aa0a69c735a"

  url "https://github.com/zstar1003/FreePDF/releases/download/v#{version}/FreePDF_v#{version}_macOS.dmg"
  name "FreePDF"
  desc "Reader that supports translating PDF documents"
  homepage "https://github.com/zstar1003/FreePDF"

  depends_on :macos

  app "FreePDF.app"

  uninstall quit: "com.zstar.freepdf"

  zap trash: [
    "~/Library/Application Support/FreePDF",
    "~/Library/Caches/FreePDF",
  ]
end
