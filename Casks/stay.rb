cask 'stay' do
  version '1.2.7'
  sha256 '332d7046630e0ed9367e635081f1eaadbecfb52e655448edc7f173d3c72c1ce5'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          checkpoint: '29ba88cd7fd5d9692b9d348f645daa94ea7d5c63fd0746478e3d7fc1cd0ea0e1'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'

  app 'Stay.app'
end
