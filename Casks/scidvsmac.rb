cask 'scidvsmac' do
  version '4.19'
  sha256 'c22437ce250cb912924bfea5c24c067dc5385e5d912fde50126c2260dcd9feec'

  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss',
          checkpoint: 'a99a28cdc09ce6f1ba85eb71f07be6ee2a2b6b6787893eabb5b2876c4a849222'
  name 'Scid vs. Mac'
  homepage 'http://scidvspc.sourceforge.net/'

  app 'ScidvsMac.app'
end
