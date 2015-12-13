cask :v1 => 'ghostlab' do
  version '2.0.10'
  sha256 '1174edf1e0496b2dff3b1a9c17fd31690259afb48227baa478e55e96c522821a'

  url "http://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'http://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml'
  name 'Ghostlab'
  homepage 'http://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
