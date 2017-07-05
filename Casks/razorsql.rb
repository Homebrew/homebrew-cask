cask 'razorsql' do
  version '7.3.0'
  sha256 'e1e3ae86d7496c4908cd7498eae8dc839f4e03b26e903518d9b0cff47974d106'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '317f8f8bf00910f05a870e27c1bd6a529c6839b318d4b90e7538885a987b0df6'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
