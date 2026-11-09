cask "rencal" do
  version "0.9.2"
  sha256 "7f1db124de28ca8fe8574cbb120278b5bbf9284b5f582194fdb339eba0eacb40"

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
