cask 'razorsql' do
  version '7.3.15'
  sha256 'a6f78b6c75ae644a8e4b6b1ce3704fc584c17ed5e43028bc84a1431b8c07f904'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '05e4cc30efdbe845023d86e4963e282554443a6c0f770fa7519f9a7f4cf729af'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
