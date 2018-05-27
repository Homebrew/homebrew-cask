cask 'razorsql' do
  version '8.0.0'
  sha256 '4d79f2699acc08bb0055035ca097f2a96ff591ac4ef3ae255a88c4380c516215'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'ef8dbb2103fc5e7288e924dfa6fee693992dc158f6d347d75cd75710f3eae153'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
