cask :v1 => 'caustic' do
  version '3.1.0'
  sha256 'acad8217f7f1bc0ced8c69491be053c19f394fbb5c6becfda07ae3ed06583d0f'

  url "http://www.singlecellsoftware.com/download/Caustic_#{version}.dmg"
  homepage 'http://www.singlecellsoftware.com/caustic'
  license :commercial

  app 'CausticOSX.app'
end
