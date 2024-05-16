cask "font-zilla-slab" do
  version "1.002"
  sha256 "62490dc19cd17e2951fe88ba3e662089ca14077634cacf1f12926374281dcf42"

  url "https://github.com/mozilla/zilla-slab/releases/download/v#{version}/Zilla-Slab-Fonts-v#{version}.zip"
  name "Zilla Slab"
  homepage "https://github.com/mozilla/zilla-slab"

  font "zilla-slab/otf/ZillaSlab-Bold.otf"
  font "zilla-slab/otf/ZillaSlab-BoldItalic.otf"
  font "zilla-slab/otf/ZillaSlab-Italic.otf"
  font "zilla-slab/otf/ZillaSlab-Light.otf"
  font "zilla-slab/otf/ZillaSlab-LightItalic.otf"
  font "zilla-slab/otf/ZillaSlab-Medium.otf"
  font "zilla-slab/otf/ZillaSlab-MediumItalic.otf"
  font "zilla-slab/otf/ZillaSlab-Regular.otf"
  font "zilla-slab/otf/ZillaSlab-SemiBold.otf"
  font "zilla-slab/otf/ZillaSlab-SemiBoldItalic.otf"
  font "zilla-slab/otf/ZillaSlabHighlight-Bold.otf"
  font "zilla-slab/otf/ZillaSlabHighlight-Regular.otf"

  # No zap stanza required
end
