cask 'a-better-finder-attributes' do
  version '6.08'
  sha256 '13a3871fb9c872dc9735e082a9d4bc0a16d9adea3d804f299f1a3e7b5c68adac'

  url 'http://www.publicspace.net/download/ABFAX.dmg'
  appcast "http://www.publicspace.net/app/signed_abfa#{version.major}.xml",
          checkpoint: '4ffa88745adc34d01698ca9b356d0504540eb907ba710a3c1a00e45f66e473e2'
  name 'A Better Finder Attributes'
  homepage 'http://www.publicspace.net/ABetterFinderAttributes/'

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
               "~/Library/Caches/net.publicspace.abfa#{version.major}",
               "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
               "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
               "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
             ]
end
