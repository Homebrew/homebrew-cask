cask 'ios-saver' do
  version :latest
  sha256 :no_check

  # site90.net is the official download host per the vendor homepage
  url 'http://dlstatsios7.site90.net/download.php',
      referer: 'http://littleendiangamestudios.com/project/ios-8-screen-saver/'
  name 'iOS 8 Lockscreen for OSX'
  homepage 'http://littleendiangamestudios.com/project/ios-8-screen-saver/'
  license :gratis

  depends_on macos: '>= :yosemite'

  screen_saver 'iOS Saver.saver'
end
