cask 'scout' do
  version '0.7.1'
  sha256 '09b89f28a16a30751f86b173ec33a0b50d0f1c5202e9737463f0bdf8d76668fe'

  # github.com/downloads/mhs/scout-app was verified as official when first introduced to the cask
  url "https://github.com/downloads/mhs/scout-app/ScoutAppInstaller-#{version}.dmg"
  appcast 'https://github.com/mhs/scout-app/releases.atom',
          checkpoint: '7c4cb87bf48075f5febb5af2a98abebbeac80f4c1af96f8ab409ca08c736eca3'
  name 'Scout'
  homepage 'https://mhs.github.io/scout-app/'
  license :oss

  installer manual: 'Install Scout.app'
end
