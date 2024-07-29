cask "font-intel-one-mono" do
  version "1.4.0"
  sha256 "74ef8ee667403c760745bc12fc5e2cb1684544194fad3d5340919c173a8227fc"

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
