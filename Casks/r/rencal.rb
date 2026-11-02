cask "rencal" do
  version "0.9.1"
  sha256 "713bb4d2b82bc07ab492032d65ec5c42481b2a22c9f01b4c85b496e2bd55d1d0"

  url "https://github.com/t4t5/rencal/releases/download/v#{version}/renCal_#{version}_aarch64.dmg"
  name "renCal"
  desc "Desktop calendar"
  homepage "https://rencal.org/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "renCal.app"

  zap trash: [
    "~/Library/Application Support/rencal",
    "~/Library/Caches/org.ren.rencal",
    "~/Library/Caches/rencal",
    "~/Library/Logs/org.ren.rencal",
    "~/Library/WebKit/org.ren.rencal",
  ]
end
