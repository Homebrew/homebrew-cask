cask "font-gnu-unifont" do
  version "17.0.05"
  sha256 "f287cffb26e22723aa36e6684869b0f3ff3bfb822c4b01008bd847911ec1b631"

  url "https://ftpmirror.gnu.org/gnu/unifont/unifont-#{version}/unifont-#{version}.tar.gz",
      verified: "ftpmirror.gnu.org/gnu/unifont/"
  name "GNU Unifont"
  homepage "https://unifoundry.com/unifont.html"

  font "unifont-#{version}/font/precompiled/unifont-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_upper-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_sample-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_jp-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_csur-#{version}.otf"

  # No zap stanza required
end
