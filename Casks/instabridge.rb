cask :v1 => 'instabridge' do
  version '1.0'
  sha256 '62fa0d8766e1be5f21404c5d530c87c3c7351cced0a43c1176aefffee0c2c788'

  url 'http://cdn.instabridge.com/mac/instabridge-osx.dmg'
  name 'Instabridge'
  appcast 'http://cdn.instabridge.com/mac/updates.xml',
          :sha256 => 'eaa67aa27e6497b9a15f8f983aca810d70104a1b45e09e61a58efbd4bfc61000'
  homepage 'http://instabridge.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Instabridge.app'
end
