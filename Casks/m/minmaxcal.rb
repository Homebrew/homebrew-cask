cask "minmaxcal" do
  version "0.9.2"
  sha256 "44600f99be2f92963a5da66d46d0117d6581a7ac11d1ce3630ed440acac71a62"

  url "https://github.com/MikeMcQuaid/MinMaxCal/releases/download/#{version}/MinMaxCal-#{version}.zip"
  name "MinMaxCal"
  desc "Minimal menu bar calendar, maximal full-screen notifications"
  homepage "https://github.com/MikeMcQuaid/MinMaxCal"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "MinMaxCal.app"

  # No zap stanza required
end
