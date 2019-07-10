cask 'melodics' do
  version '2.0.2989'
  sha256 '5bec07741036d227288e3b378c866642661972e4cceb3a0c900ad493829c89f4'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
