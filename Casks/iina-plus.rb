cask 'iina-plus' do
  version '0.4.15,20061218'
  sha256 'b8dfa5899f0f00e570484e951769a3f8400cba1c13f2ee6ae2bfc054a6a62d8d'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app "iina+ #{version.before_comma}.app"
end
