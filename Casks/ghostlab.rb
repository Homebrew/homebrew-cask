cask 'ghostlab' do
  version '2.0.10'
  sha256 '1174edf1e0496b2dff3b1a9c17fd31690259afb48227baa478e55e96c522821a'

  url "https://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'https://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml',
          :sha256 => '432ca432eca3602fd2daece9ed1a357dd185db0a17521e7545e981d75c54b8ef'
  name 'Ghostlab'
  homepage 'https://vanamco.com/ghostlab/'
  license :commercial

  app 'Ghostlab2.app'
end
