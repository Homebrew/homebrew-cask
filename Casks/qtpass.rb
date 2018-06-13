cask 'qtpass' do
  version '1.2.3'
  sha256 '87df7b4c6e7e4935cf67228488087dac15b943688de4052b6f2550558da16854'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
