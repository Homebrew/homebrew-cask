cask 'razorsql' do
  version '7.4.4'
  sha256 'e121500683933c700875f67edca27d48cfc8f171f0e6888603417202690690cb'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '178567de20ec7026bde785ccb7932038a0d32dd7b03d56b435c478df2ba723d5'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
