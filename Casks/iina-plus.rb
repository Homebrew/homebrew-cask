cask 'iina-plus' do
  version '0.4.14,20040415'
  sha256 '5429313015620e880c16dc30c6b5b4f9e187394914710f8b078f17e2aea42d50'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app 'iina+.app'
end
