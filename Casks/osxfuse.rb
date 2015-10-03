cask :v1 => 'osxfuse' do
  version '2.8.1'
  sha256 '5bc1f3165bedb4395f7b1d1fd88ea25feeca9ee6f2c751c17249bafc6a5c66cd'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  name 'OSXFUSE'
  homepage 'https://osxfuse.github.io/'
  license :bsd

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'

  postflight do
    set_ownership ['/usr/local/include', '/usr/local/lib']
  end

  caveats do
    reboot
  end
end
