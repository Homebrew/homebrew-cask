cask 'a-better-finder-attributes' do
  version '6.04'
  sha256 '6d1c36842cb33e022cfa254c0f9e59141e28e8fdb2135482f90c4540f57e8f07'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: '157b591920718041f5144b68312336449b90f961724d6fe841fbc1d5b0223b14'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"
end
