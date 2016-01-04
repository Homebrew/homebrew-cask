cask 'cscreen' do
  version '2012.09'
  sha256 '522348667b4ac13a3bd63afee5a9b796b97cb06f12f4e9cbb1943dd4c8bb0895'

  url "http://www.pyehouse.com/wp-content/uploads/#{version.sub('.', '/')}/cscreenIntel.dmg"
  name 'cscreen'
  homepage 'http://www.pyehouse.com/cscreen/'
  license :gratis

  binary 'cscreen'
end
