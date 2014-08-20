class BeatportPro < Cask
  version '2.1.0_133'
  sha256 'd668c8fb82be5a5402a2470f7f65df75d08bad84352a609ea694290e29df93e2'

  url "http://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  homepage 'http://pro.beatport.com/'

  link 'Beatport Pro.app'
end
