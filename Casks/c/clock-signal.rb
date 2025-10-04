cask "clock-signal" do
  version "2025-10-03.2"
  sha256 "340c6d78176070e9362f8a12745be5b10e3b3f87f5c1c37fd58106798a1d74b4"

  url "https://github.com/TomHarte/CLK/releases/download/#{version}/Clock.Signal.MacOS.#{version}.zip"
  name "Clock Signal"
  name "CLK"
  desc "Latency-hating emulator of 8- and 16-bit platforms"
  homepage "https://github.com/TomHarte/CLK"

  app "Clock Signal.app"

  uninstall quit: "TH.Clock-Signal"

  zap trash: [
    "~/Library/Application Scripts/TH.Clock-Signal",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/th.clock-signal.sfl*",
    "~/Library/Containers/TH.Clock-Signal",
  ]
end
