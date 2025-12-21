cask "clock-signal" do
  version "2025-12-12"
  sha256 "7de9afa2aa34cb09408b1610f249a359fbc5c49ccbd25895833d10c9d19b1139"

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
