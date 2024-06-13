cask "font-hermit" do
  version "2.0"
  sha256 "c04b432b088edabc8ff025049535077722869f842fb6f851864106b7f4f03527"

  url "https://pcaro.es/d/otf-hermit-#{version}.tar.gz"
  name "Hermit"
  homepage "https://pcaro.es/p/hermit/"

  livecheck do
    url :homepage
    regex(/href=.*?hermit[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  font "Hermit-Bold.otf"
  font "Hermit-RegularItalic.otf"
  font "Hermit-LightItalic.otf"
  font "Hermit-Light.otf"
  font "Hermit-Regular.otf"
  font "Hermit-BoldItalic.otf"

  # No zap stanza required
end
