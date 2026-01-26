cask "font-gnu-unifont" do
  version "17.0.03"
  sha256 "9a26aa9adfa8eb1f91b0cd9b83e7f95ea9e14c6e85be71aa3ab0df5cb4e69c35"

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
