cask 'drjava' do
  version '20160913-225446,beta'
  sha256 'e26b5ca518585ec3d9500d6709e4c1cd2ad41ea041606762cc66254af9c7f431'

  # downloads.sourceforge.net/drjava/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/drjava/1.%20DrJava%20Stable%20Releases/drjava-#{version.after_comma}-#{version.before_comma}/drjava-#{version.after_comma}-#{version.before_comma}-osx.tar.gz"
  appcast 'https://sourceforge.net/projects/drjava/rss?path=/1.%20DrJava%20Stable%20Releases'
  name 'DrJava'
  homepage 'http://www.drjava.org/'

  app 'DrJava.app'
end
