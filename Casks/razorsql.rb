cask 'razorsql' do
  version '8.0.3'
  sha256 '099f20819774c592f2489f2993ebb54aadbe35c83827d4aa64e99b93208aae31'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
