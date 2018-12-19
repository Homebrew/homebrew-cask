cask 'melodics' do
  version '2.0.2646'
  sha256 'c7fe078132de2ba313e40397f2ef3cc5ab6ff6cd44276da2fc0f47154f398239'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
