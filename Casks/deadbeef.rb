cask 'deadbeef' do
  version '0.7.2'
  sha256 '669daa26d5b347f332827ca75682b98cf14fd735b16cd0d4973746aa8a362323'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'dea19615860a038ef31c65a996ea380037ea255724e40eea21722fda10c0685c'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
