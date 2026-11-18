cask "rencal" do
  version "0.10.0"
  sha256 "3b4d7bd1d2401fb4ebe990d9749128a08826b828a37f77b7d4ad893bc10066c7"

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
