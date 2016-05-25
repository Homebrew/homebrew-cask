cask 'beatport-pro' do
  version '2.2.4_167'
  sha256 '2039235b12e4ef90d9421c9689629a7304445380f5fdb0dc7a57b75fecb62104'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          checkpoint: 'ea3d3f35e508d63b3d58b50373d949f926c6bc2882ca21ab996e8a5ea2d94fc0'
  name 'Beatport Pro'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
