cask "font-intel-one-mono" do
  version "1.3.0"
  sha256 "89921f9171fe1a9955c044b82da40121a096b3b38a984b68f49d92a73bda812b"

  url "https://github.com/intel/intel-one-mono/releases/download/V#{version}/otf.zip"
  name "font-intel-one-mono"
  homepage "https://github.com/intel/intel-one-mono"

  font "otf/IntelOneMono-Bold.otf"
  font "otf/IntelOneMono-BoldItalic.otf"
  font "otf/IntelOneMono-Italic.otf"
  font "otf/IntelOneMono-Light.otf"
  font "otf/IntelOneMono-LightItalic.otf"
  font "otf/IntelOneMono-Medium.otf"
  font "otf/IntelOneMono-MediumItalic.otf"
  font "otf/IntelOneMono-Regular.otf"

  # No zap stanza required
end
