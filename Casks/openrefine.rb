cask 'openrefine' do
  version '2.7'
  sha256 '7dd6c0692d7c7d9d6d93aa94446e1a814a97404d2a2cbda702a81feb3ee14934'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
