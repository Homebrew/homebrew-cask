cask 'i1profiler' do
  version '1.7.1'
  sha256 '8b6a4c2171e16abc44708c58868fa462f3a86ab8a1911957bdddd3985eb2ca12'

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version}/Mac/i1Profiler.zip"
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
