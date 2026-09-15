cask "minmaxcal" do
  version "0.9.1"
  sha256 "580715be6c4068b63149f57889d0390676773f902f48b9b064b00b332ebe52af"

  url "https://github.com/MikeMcQuaid/MinMaxCal/releases/download/#{version}/MinMaxCal-#{version}.zip"
  name "MinMaxCal"
  desc "Minimal menu bar calendar, maximal full-screen notifications"
  homepage "https://github.com/MikeMcQuaid/MinMaxCal"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "MinMaxCal.app"

  # No zap stanza required
end
