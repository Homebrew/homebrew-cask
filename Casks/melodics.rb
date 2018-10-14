cask 'melodics' do
  version '2.0.2359'
  sha256 '11b80dd9502f8d1b50c2487344411bcb689792dc31f15668e36affb67aba41da'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
