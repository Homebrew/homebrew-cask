cask 'netshade' do
  version '7.0.3'
  sha256 '5d6b2daec9d5cd19a3c14b6784f0138d20a3f9cc796b25a0b2940641c7e1478b'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/appcast.php',
          checkpoint: '898af8ae25b251ed6e1fc5a473da1ed019cfb1d83079b4aff8fa2656c6adc9cf'
  name 'NetShade'
  homepage 'http://raynersw.com/netshade.php'

  app 'NetShade.app'
end
