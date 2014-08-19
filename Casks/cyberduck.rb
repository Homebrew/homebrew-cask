class Cyberduck < Cask
  version '4.5.1'
  sha256 '7446987c801aa8b41f97b1b90a35550760c7be7b65c0bee0d97a2549d2a25f34'

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast 'https://version.cyberduck.io/changelog.rss'
  homepage 'http://cyberduck.io/'

  link 'Cyberduck.app'
end
