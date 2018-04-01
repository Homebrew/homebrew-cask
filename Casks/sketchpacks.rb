cask 'sketchpacks' do
  version :latest
  sha256 :no_check

  # sketchpacks-releases.herokuapp.com was verified as official when first introduced to the cask
  url 'https://sketchpacks-releases.herokuapp.com/download/osx'
  name 'Sketchpacks'
  homepage 'https://sketchpacks.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Sketchpacks.app'
end
