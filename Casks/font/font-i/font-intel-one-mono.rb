cask "font-intel-one-mono" do
  version "1.5.0"
  sha256 "6ec64d4fdbaef33f81fe270566368ff0c926bb021f72ac148f2cdec604bd1283"

  url "https://github.com/intel/intel-one-mono/releases/download/V#{version}/intel-one-mono-otf.zip"
  name "Intel One Mono"
  homepage "https://github.com/intel/intel-one-mono"

  font "intel-one-mono-otf/IntelOneMono-Bold.otf"
  font "intel-one-mono-otf/IntelOneMono-BoldItalic.otf"
  font "intel-one-mono-otf/IntelOneMono-Italic.otf"
  font "intel-one-mono-otf/IntelOneMono-Light.otf"
  font "intel-one-mono-otf/IntelOneMono-LightItalic.otf"
  font "intel-one-mono-otf/IntelOneMono-Medium.otf"
  font "intel-one-mono-otf/IntelOneMono-MediumItalic.otf"
  font "intel-one-mono-otf/IntelOneMono-Regular.otf"

  zap :not_required
end
