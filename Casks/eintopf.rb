cask 'eintopf' do
  version '1.2.0'
  sha256 'a4484461049d7751309f757aca4d14ef8edeb478cc297d490c559eb3f6931d84'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          checkpoint: 'c882e86a3d473fba193ff78e1e46cb74d81eb77ef5b0fff428001c93c440c84c'
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
