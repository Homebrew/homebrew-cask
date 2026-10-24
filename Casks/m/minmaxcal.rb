cask "minmaxcal" do
  version "0.9.4"
  sha256 "d5ead7bc3db6f2e31f908a5ea28a4a7df488065023c156a3cc2c145e89f01dce"

  url "https://github.com/MikeMcQuaid/MinMaxCal/releases/download/#{version}/MinMaxCal-#{version}.zip"
  name "MinMaxCal"
  desc "Minimal menu bar calendar, maximal full-screen notifications"
  homepage "https://github.com/MikeMcQuaid/MinMaxCal"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MinMaxCal.app"

  zap trash: [
    "~/Library/Application Scripts/com.mikemcquaid.MinMaxCal",
    "~/Library/Containers/com.mikemcquaid.MinMaxCal",
  ]
end
