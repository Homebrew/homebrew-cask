class Skypewebplugin < Cask
  version '2.9.13008.18866'
  sha256 'a712b65f31f56ceef6bd7b36fce1eedcf2984031cb73e9951910d65379523648'

  homepage 'http://www.skype.com/en/features/skype-for-outlook'
  url 'https://az379195.vo.msecnd.net/public/download/mac/SkypeWebPlugin-2.9.13008.18866.pkg'

  # Ensure current user has internet plugin during install
  before_install do
    system '/bin/mkdir', '-p', "#{ENV['HOME']}/Library/Internet Plug-Ins"
  end

  install 'SkypeWebPlugin-2.9.13008.18866.pkg'

  # Make internet plugin system wide as package itself
  after_install do
    system '/usr/bin/sudo', '-E', '--',
      '/bin/mv', "#{ENV['HOME']}/Library/Internet Plug-Ins/SkypeWebPlugin.bundle", '/Library/Internet Plug-Ins/'
  end

  uninstall :pkgutil => 'com.skype.skypewebplugin.*'

  # Remove orphanned internet plugin
  after_uninstall do
    system '/usr/bin/sudo', '-E', '--',
      '/bin/rm', '-f', '/Library/Internet Plug-Ins/SkypeWebPlugin.bundle'
  end
end
