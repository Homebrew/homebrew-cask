cask "minmaxcal" do
  version "0.9.6"
  sha256 "eb30a7a5daf0f721edb135c2f0ffb731915f8bdf23a422088ade744e55ac14d4"

  url "https://github.com/MikeMcQuaid/MinMaxCal/releases/download/#{version}/MinMaxCal-#{version}.zip"
  name "MinMaxCal"
  desc "Minimal menu bar calendar, maximal full-screen notifications"
  homepage "https://mikemcquaid.com/minmaxcal/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MinMaxCal.app"

  zap trash: [
    "~/Library/Application Scripts/com.mikemcquaid.MinMaxCal",
    "~/Library/Containers/com.mikemcquaid.MinMaxCal",
  ]
end
