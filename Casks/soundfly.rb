cask 'soundfly' do
  version :latest
  sha256 :no_check

  url 'https://web.archive.org/web/20160702033228/https://abyssoft.com/software/soundfly/downloads/soundfly.zip'
  name 'Soundfly'
  homepage 'https://web.archive.org/web/20161204183837/https://abyssoft.com/software/soundfly'

  depends_on cask: 'soundflower'

  pkg 'Soundfly.pkg', allow_untrusted: true

  postflight do
    system_command '/sbin/kextload',
                   args: ['-b', 'com.Cycling74.driver.Soundflower'],
                   sudo: true
  end

  uninstall pkgutil: 'com.abyssoft.soundfly.*'
end
