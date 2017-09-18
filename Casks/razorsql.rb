cask 'razorsql' do
  version '7.3.6'
  sha256 '344ad00378ec88dd6bb28171d98875aa919d63bab419da7f00048d7d919bf9d0'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: '3d3996956b4378c211925a4317db24ba609622b7b3816ca22e59a91a28733b99'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
