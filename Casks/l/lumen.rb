cask "lumen" do
  version "1.3.1"
  sha256 "3e22d1a8c646c414f7b99cb880730123ad0a5c66c2f2774c060e0c22cff5af0b"

  url "https://github.com/anishathalye/lumen/releases/download/v#{version}/Lumen.zip"
  name "Lumen"
  desc "Magic auto brightness based on screen contents"
  homepage "https://github.com/anishathalye/lumen"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :sonoma

  app "Lumen.app"

  zap trash: [
    "~/Library/Caches/com.anishathalye.Lumen",
    "~/Library/Preferences/com.anishathalye.Lumen.plist",
  ]
end
