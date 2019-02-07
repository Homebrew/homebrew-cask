cask 'melodics' do
  version '2.0.2677'
  sha256 '926241af674f116aeecaa2f298185006ec99e0c5951f7a6b37b4f1b842bd26f1'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
