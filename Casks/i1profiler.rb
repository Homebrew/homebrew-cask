cask 'i1profiler' do
  version '1.7.0'
  sha256 '7a256c428c429140dea8e86eb685be5d6231bf1dc029f65973d653b7232dcb0a'

  url 'https://my.xrite.com/downloader.aspx?FileID=1802&Type=M'
  name 'i1Profiler'
  name 'Eye-One Profiler'
  name 'i1Publish'
  homepage "http://www.xrite.com/service-support/downloads/I/i1Profiler-i1Publish_V#{version.dots_to_underscores}"

  pkg 'i1Profiler.pkg'

  uninstall pkgutil: 'com.xrite.i1profiler.*'

  caveats do
    reboot
  end
end
