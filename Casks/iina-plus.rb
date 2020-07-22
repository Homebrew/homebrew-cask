cask 'iina-plus' do
  version '0.5.0,20072018'
  sha256 '2245826be480346e1f33fa1af942bcc6d57c727a34823a29f6caeb61030178e2'

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast 'https://github.com/xjbeta/iina-plus/releases.atom'
  name 'IINA+'
  homepage 'https://github.com/xjbeta/iina-plus'

  app 'iina+.app'
end
