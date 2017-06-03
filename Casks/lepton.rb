cask 'lepton' do
  version '1.3.0'
  sha256 '0d8396d775feb474dd747addd0d2672253a295921fb7cf64f4efbc5d7a73afd7'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: 'dea9c256fbcb39688d097f628a61acc3a916ddebfa320781c29cae8b18f70711'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
