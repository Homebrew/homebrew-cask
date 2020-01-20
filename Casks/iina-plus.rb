cask 'iina-plus' do
  version '0.4.12,20011822'
  sha256 '6064c3dbd173b6bdc8be135d5b2b36eb2fb1edd85e54bb11b3937ae8876cc0e7'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app 'iina+.app'
end
