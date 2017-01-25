cask 'a-better-finder-attributes' do
  version '6.03'
  sha256 'fdc5e960faa943a78e0d9ecafb1c3ed0b0750035bc241cb78793c6b611c7493a'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: 'd7de012c1ca68a42987836414036aca7e74a8ea7500b3675633e67489d1b5962'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"
end
