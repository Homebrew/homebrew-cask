cask 'remote-buddy' do
  version :latest
  sha256 :no_check

  url 'https://www.iospirit.com/static/objectfiles/file/101/RemoteBuddy.dmg'
  name 'Remote Buddy'
  homepage 'https://www.iospirit.com/products/remotebuddy'
  license :commercial

  app 'Remote Buddy.app'
end
