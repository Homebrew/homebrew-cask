cask 'irccloud' do
  version '0.1.7'
  sha256 'f013072b0aff656f11812eb5d2d7f7bc9408177f981798a740c4f1b028f3040e'

  url 'https://github.com/irccloud/irccloud-desktop/releases/download/v0.1.7/IRCCloud-0.1.7.dmg'
  name 'IRCCloud'
  homepage 'https://www.irccloud.com'
  license :apache

  app 'IRCCloud.app'
end
