cask 'aqua-data-studio' do
  version '19.5.0'
  sha256 '27af1b65ce476c8aa0a39456bbefc21dbf88b5c5a70ca374c67a4832209fcedb'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
