cask 'caustic' do
  version '3.1.0'
  sha256 'acad8217f7f1bc0ced8c69491be053c19f394fbb5c6becfda07ae3ed06583d0f'

  url "http://www.singlecellsoftware.com/download/Caustic_#{version}.dmg"
  name 'Caustic'
  homepage 'https://www.singlecellsoftware.com/caustic'

  app 'CausticOSX.app'
end
