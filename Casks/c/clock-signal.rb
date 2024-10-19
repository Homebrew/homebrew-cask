cask "clock-signal" do
  version "2024-10-19"
  sha256 "d2bf396dfe34ca13039b463b12c9fbfb4799e6cfac5dabcddc9d6db1b587a90d"

  url "https://github.com/TomHarte/CLK/releases/download/#{version}/Clock.Signal.MacOS.#{version}.zip"
  name "Clock Signal"
  name "CLK"
  desc "Latency-hating emulator of 8- and 16-bit platforms"
  homepage "https://github.com/TomHarte/CLK"

  depends_on macos: ">= :high_sierra"

  app "Clock Signal.app"

  uninstall quit: "TH.Clock-Signal"

  zap trash: [
    "~/Library/Application Scripts/TH.Clock-Signal",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/th.clock-signal.sfl*",
    "~/Library/Containers/TH.Clock-Signal",
  ]
end
