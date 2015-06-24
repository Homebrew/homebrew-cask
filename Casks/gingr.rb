cask :v1 => 'gingr' do
  version '1.2'
  sha256 '27ba08606ae3f743ffdbcb6d554048ab3a7560087577f10503a0f5cd0227f9d3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/marbl/gingr/releases/download/v#{version}/gingr-OSX64-v#{version}.zip"
  appcast 'https://github.com/marbl/gingr/releases.atom'
  name 'Gingr'
  homepage 'http://harvest.readthedocs.org/en/latest/content/gingr.html'
  license :bsd

  app 'Gingr.app'
end
