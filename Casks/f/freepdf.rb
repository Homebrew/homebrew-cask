cask "freepdf" do
  version "5.1.3"
  sha256 "bbea8a4bf8c218fb8b90975e69c12f1bf2e51d3741e69039c6e8ce48fbeaae6a"

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
