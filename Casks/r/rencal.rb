cask "rencal" do
  version "0.9.0"
  sha256 "6cbd39058705e6b9d1ac472f6bce5c442dcd3600ddf12b1f6ac19247928f249b"

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
