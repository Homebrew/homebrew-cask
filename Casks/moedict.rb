cask 'moedict' do
  version '1.1.1'
  sha256 'c11ce7da15777d2d84c3063d1260f2b33c3e0e2e6cf02507f38354c919693ca2'

  # github.com/racklin/moedict-desktop was verified as official when first introduced to the cask
  url "https://github.com/racklin/moedict-desktop/releases/download/#{version}/moedict-desktop.app-#{version}.dmg"
  name 'Moedict'
  homepage 'https://racklin.github.io/moedict-desktop/'

  app 'Moedict-Desktop.app'
end
