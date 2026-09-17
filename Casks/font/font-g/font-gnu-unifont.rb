cask "font-gnu-unifont" do
  version "18.0.01"
  sha256 "eab60847aac34c8768765cecc7821faf50de2636187b452b9b5fa50a12b00bc3"

  url "https://ftpmirror.gnu.org/gnu/unifont/unifont-#{version}/unifont-#{version}.tar.gz"
  name "GNU Unifont"
  homepage "https://unifoundry.com/unifont.html"

  font "unifont-#{version}/font/precompiled/unifont-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_csur-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_jp-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_sample-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_upper-#{version}.otf"

  # No zap stanza required
end
