cask 'soundfly' do
  version :latest
  sha256 :no_check

  url 'http://abyssoft.com/software/soundfly/downloads/soundfly.zip'
  name 'Soundfly'
  homepage 'http://abyssoft.com/software/soundfly/'
  license :gratis

  depends_on cask: 'soundflower'

  pkg 'Soundfly.pkg', allow_untrusted: true

  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/sbin/kextload', '-b', 'com.Cycling74.driver.Soundflower'
  end

  uninstall pkgutil: 'com.abyssoft.soundfly.*'
end
