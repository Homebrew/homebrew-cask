class Gingr < Cask
  version '1.0'
  sha256 '6cc53cbb2b3069bd4dd397a8d9b0ce6251a95a3833e371a69ee3dd3d1555b87c'

  url "https://github.com/marbl/gingr/releases/download/v#{version}/gingr-OSX64.app.zip"
  homepage 'http://harvest.readthedocs.org/en/latest/content/gingr.html'

  link 'gingr-OSX64.app', :target => 'Gingr.app'
end
