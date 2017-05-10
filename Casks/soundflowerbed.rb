cask 'soundflowerbed' do
  version '2.0.0'
  sha256 'b6946abb69bd0b154462181ed0c46fc5cbf6bb527b2f891ff97575382627d5d9'

  url "https://github.com/mLupine/SoundflowerBed/releases/download/#{version}-release/SoundflowerBed-#{version}-release.dmg"
  appcast 'https://github.com/mLupine/SoundflowerBed/releases.atom',
          checkpoint: '9ad33bf4936664c47ee0a00817062238d9612c511930b080e917354cb188b6a4'
  name 'SoundflowerBed'
  homepage 'https://github.com/mLupine/SoundflowerBed'

  app 'SoundflowerBed.app'
end
