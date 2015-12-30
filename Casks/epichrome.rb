cask 'epichrome' do
  version '2.1.6'
  sha256 '136f9cc1289510a33b572161bddf1ec3b1f1a7344e60bde3700bd208b6beaa3e'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          :sha256 => 'c22d897666fdcea32a260fe0c361d4bd76d146ab8c26756535514427d65150f0'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
