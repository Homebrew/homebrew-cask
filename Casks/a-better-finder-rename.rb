cask 'a-better-finder-rename' do
  version '10.08'
  sha256 '1b4ce554b491e86b385a7256812e7169cd11923819a17f585a9349491a3955c9'

  url "http://www.publicspace.net/download/ABFRX#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_abfr#{version.major}.xml",
          checkpoint: '2ce7c7be9eea518df630005c75edb653c12a62218ff6fd5569aa2a82bfc9802a'
  name 'A Better Finder Rename'
  homepage 'http://www.publicspace.net/ABetterFinderRename/'
  license :commercial

  app "A Better Finder Rename #{version.major}.app"
end
