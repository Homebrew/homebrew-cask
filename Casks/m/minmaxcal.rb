cask "minmaxcal" do
  version "0.9.3"
  sha256 "708dcb3183c19412339fc95543768bffd674edcba9a99bbd8e4918a1c87c86c6"

  url "https://github.com/MikeMcQuaid/MinMaxCal/releases/download/#{version}/MinMaxCal-#{version}.zip"
  name "MinMaxCal"
  desc "Minimal menu bar calendar, maximal full-screen notifications"
  homepage "https://github.com/MikeMcQuaid/MinMaxCal"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MinMaxCal.app"

  # No zap stanza required
end
