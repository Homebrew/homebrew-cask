cask 'soundflowerbed' do
  version '2.0.0'
  sha256 'b6946abb69bd0b154462181ed0c46fc5cbf6bb527b2f891ff97575382627d5d9'

  url "https://github.com/mLupine/SoundflowerBed/releases/download/#{version}-release/SoundflowerBed-#{version}-release.dmg"
  appcast 'https://github.com/mLupine/SoundflowerBed/releases.atom',
          checkpoint: '2b823e11493170b24d4542d396c8f964792fa951b24443559a31141bb2b14a42'
  name 'SoundflowerBed'
  homepage 'https://github.com/mLupine/SoundflowerBed'

  app 'SoundflowerBed.app'
end
