cask "font-gnu-unifont" do
  version "16.0.03"
  sha256 "2eee0454e7e570ac22b637f9f622a9c06cfc56e61931069d0d667ce5c2ae189e"

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
