cask 'beatport-pro' do
  version '2.4.1_173'
  sha256 'e832d11e0eefcdd03754294eedff449cf48a3af06b4271bfd652d09be1fe7a15'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml'
  name 'Beatport Pro'
  homepage 'https://www.beatport.com/'

  app 'Beatport Pro.app'
end
