cask "rencal" do
  version "0.9.3"
  sha256 "516da099efd5f9e98a7c964d3b76400e99789969d6ab595703450066485be217"

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
