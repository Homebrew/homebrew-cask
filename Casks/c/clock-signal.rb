cask "clock-signal" do
  version "2026-01-06"
  sha256 "a0d1ac7d78575efe737b430d05afa7eee961035dd44d1853ecc4a99491a3fe43"

  url "https://github.com/TomHarte/CLK/releases/download/#{version}/Clock.Signal.MacOS.#{version}.zip"
  name "Clock Signal"
  name "CLK"
  desc "Latency-hating emulator of 8- and 16-bit platforms"
  homepage "https://github.com/TomHarte/CLK"

  livecheck do
    url :url
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
  end

  app "Clock Signal.app"

  uninstall quit: "TH.Clock-Signal"

  zap trash: [
    "~/Library/Application Scripts/TH.Clock-Signal",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/th.clock-signal.sfl*",
    "~/Library/Containers/TH.Clock-Signal",
  ]
end
