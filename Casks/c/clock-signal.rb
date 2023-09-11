cask "clock-signal" do
  version "2023-09-10"
  sha256 "b343de3190a408404ab4eaeda2f719780175fc99224c9c43c65e1519113efdee"

  url "https://github.com/TomHarte/CLK/releases/download/#{version}/Clock.Signal.#{version}.zip"
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
