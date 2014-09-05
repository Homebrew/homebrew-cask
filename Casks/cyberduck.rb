class Cyberduck < Cask
  version '4.5.2'
  sha256 '94afaf396b4fddfb1bacbe9a8f648492949dde437579be273c0a752470d577c1'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
  homepage 'http://cyberduck.io/'

  link 'Cyberduck.app'
end
