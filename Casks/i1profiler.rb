cask 'i1profiler' do
  version '1.6.7'
  sha256 'fe3a00123b6c9a1b60f7d2d42207770d1cffa23fe2e29410a308ee6dee40fda0'

  url 'https://my.xrite.com/downloader.aspx?FileID=1672&Type=M'
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
