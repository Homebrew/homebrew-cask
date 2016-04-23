cask 'a-better-finder-rename' do
  version '10.06'
  sha256 '0ac7a888709ed4799c001af38a9a84abf7a5777f97413a034bbeaa7593197f9c'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '785224b7a90e2089df11e5c3f29d09943a11da42bb75c0a587a7981592773523'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
