cask :v1 => 'beatport-pro' do
  version '2.1.1_137'
  sha256 '62526d08723e5a54953473a2c1530e5b298ab2a50a491dd2a846bf7c0b9499cb'

  url "http://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  homepage 'http://pro.beatport.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Beatport Pro.app'
end
