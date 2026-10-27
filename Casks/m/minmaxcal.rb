cask "minmaxcal" do
  version "0.9.5"
  sha256 "0b22f158b6cef31e82cca0bc3d1c037095cd934589e05845006cd10691d3f6c8"

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
