cask "font-gnu-unifont" do
  version "15.1.05"
  sha256 "d275f55f4358750e0f86305b92e87b88eb330aa46c15f553d2edf047fb1c23fa"

  url "https://ftp.gnu.org/gnu/unifont/unifont-#{version}/unifont-#{version}.tar.gz",
      verified: "ftp.gnu.org/gnu/unifont/"
  name "GNU Unifont"
  homepage "https://unifoundry.com/unifont.html"

  livecheck do
    url "https://unifoundry.com/pub/unifont/"
    regex(%r{href=["']?unifont[._-]v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  font "unifont-#{version}/font/precompiled/unifont-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_upper-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_sample-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_jp-#{version}.otf"
  font "unifont-#{version}/font/precompiled/unifont_csur-#{version}.otf"

  # No zap stanza required
end
