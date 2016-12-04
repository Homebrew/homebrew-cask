cask 'deadbeef' do
  version '0.7.2'
  sha256 '7dc688cca32bf1ef2efbfb4f93c7464b1f935ad71e3d2e35fb06513a615bd7e8'

  url 'https://downloads.sourceforge.net/deadbeef/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'ed8178e68dd11ce0d03d31f8864e4eaa95cf45112764691f0b82793fcbd4dcb2'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end
