cask "font-gnu-unifont" do
  version "17.0.04"
  sha256 "5c52c5d56ef98089ddbca62e68560ceccc57ea88940b9d38cc3c888fe3b59a34"

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
