cask :v1 => 'instabridge' do
  version '1.0'
  sha256 '62fa0d8766e1be5f21404c5d530c87c3c7351cced0a43c1176aefffee0c2c788'

  url 'http://cdn.instabridge.com/mac/instabridge-osx.dmg'
  homepage 'http://instabridge.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Instabridge.app'
end
