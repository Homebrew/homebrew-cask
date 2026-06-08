cask "font-takaoex" do
  version "00201.01"
  sha256 "6af43928cb4d9943cbd5565079d1dfed60aef20badf4e99c3a1edc0e6a07d42b"

  url "https://launchpad.net/takao-fonts/trunk/15.03/+download/TakaoExFonts_#{version}.zip"
  name "TakaoEx"
  homepage "https://launchpad.net/takao-fonts"

  livecheck do
    url :homepage
    regex(/href=.*?TakaoExFonts[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "TakaoExFonts_#{version}/TakaoExGothic.ttf"
  font "TakaoExFonts_#{version}/TakaoExMincho.ttf"

  # No zap stanza required
end
