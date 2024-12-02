cask "font-gnu-unifont" do
  version "16.0.02"
  sha256 "f128ec8763f2264cd1fa069f3195631c0b1365366a689de07b1cb82387aba52d"

  url "https://ftp.gnu.org/gnu/unifont/unifont-#{version}/unifont-#{version}.tar.gz",
      verified: "ftp.gnu.org/gnu/unifont/"
  name "GNU Unifont"
  homepage "https://unifoundry.com/unifont.html"

  font "unifont-#{version}/font/precompiled/unifont-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_upper-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_sample-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_jp-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_csur-#{version}.otf"

  # No zap stanza required
end
