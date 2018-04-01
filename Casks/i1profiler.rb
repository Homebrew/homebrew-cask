cask 'i1profiler' do
  version '1.7.2'
  sha256 '276aeda81784d074e50fc6b0a6f4b9a7ffca4e15496b58733ae50acb68091b15'

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version}/Mac/i1Profiler.zip"
  name 'i1Profiler'
  name 'Eye-One Profiler'
  name 'i1Publish'
  homepage "http://www.xrite.com/service-support/downloads/I/i1Profiler-i1Publish_V#{version.dots_to_underscores}"

  pkg 'i1Profiler.pkg'

  uninstall pkgutil:   [
                         'com.xrite.i1profiler.*',
                         'com.xrite.xritedeviceservices.*',
                         'com.xrite.hasp.installer.*',
                       ],
            launchctl: [
                         'com.xrite.device.softwareupdate.plist',
                         'com.xrite.device.xrdd.plist',
                       ],
            delete:    '/Applications/i1Profiler/i1Profiler.app',
            rmdir:     '/Applications/i1Profiler'

  caveats do
    reboot
  end
end
