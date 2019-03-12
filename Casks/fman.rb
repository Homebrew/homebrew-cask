cask 'fman' do
  version '1.5.6'
  sha256 'f445f2bbdebe40202e7fe99185ca1dc62294915957c006df3728cbc693bec31e'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
