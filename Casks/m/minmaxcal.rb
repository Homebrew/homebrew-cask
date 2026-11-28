cask "minmaxcal" do
  version "1.0.0"
  sha256 "d63465cfccb97a264672a0b5ac6e136e54796ced8370f7f28382854cbf8927dd"

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
