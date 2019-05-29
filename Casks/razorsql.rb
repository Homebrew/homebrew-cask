cask 'razorsql' do
  version '8.3.4'
  sha256 '75f78dcdfe0bd7184d64db2e159fcf0e426a81481db793518292168fe6a16294'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
