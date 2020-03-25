cask 'iina-plus' do
  version '0.4.13,20032415'
  sha256 'afbc68cbe5d9cf90a3c3dbd88a4e1448de630bc7c795564811a02f39492f0318'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app 'iina+.app'
end
