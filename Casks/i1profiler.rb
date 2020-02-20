cask 'i1profiler' do
  version '3.2.0'
  sha256 'b30d7ebd8a251f36f2fa84589aa793974cfc2fc9eddf7644c747f61a671d8a27'

  url "https://downloads.xrite.com/downloads/software/i1Profiler/#{version}/Mac/i1Profiler.zip"
  appcast 'https://www.xrite.com/Downloads/Autoupdate/i1profiler_mac_appcast.xml'
  name 'i1Profiler'
  name 'Eye-One Profiler'
  name 'i1Publish'
  homepage "https://www.xrite.com/service-support/downloads/I/i1Profiler-i1Publish_V#{version.dots_to_underscores}"

  pkg 'i1Profiler.pkg'

  uninstall pkgutil:   [
                         'com.xrite.i1profiler.*',
                         'com.xrite.xritedeviceservices.*',
                         'com.xrite.hasp.installer.*',
                       ],
            launchctl: [
                         'com.aladdin.aksusbd',
                         'com.aladdin.hasplmd',
                       ],
            delete:    '/Applications/i1Profiler/i1Profiler.app',
            rmdir:     '/Applications/i1Profiler'

  caveats do
    reboot
  end
end
