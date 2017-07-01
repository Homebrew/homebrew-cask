cask 'picoscope' do
  version '6.11.13.2'
  sha256 '84da2b1e19136798cc972bedb1a6904ccba34fd348a4eb730c17f4f2b355fc25'

  url "https://www.picotech.com/download/software/beta/PicoScope-#{version}.pkg"
  name 'PicoScope'
  homepage 'https://www.picotech.com/'

  pkg "PicoScope-#{version}.pkg"

  uninstall pkgutil: 'com.picotech.*'
end
