cask :v1 => 'osxfuse' do
  version '2.7.3'
  sha256 '88d0594e46191aeafa259535398d25c4ccfa03c178e10d925a69e4dcb6293fa2'

  url "https://downloads.sourceforge.net/project/osxfuse/osxfuse-#{version}/osxfuse-#{version}.dmg"
  homepage 'https://osxfuse.github.io/'
  license :oss

  pkg "Install OSXFUSE #{version[0..-3]}.pkg"

  uninstall :pkgutil => 'com.github.osxfuse.pkg.Core|com.github.osxfuse.pkg.PrefPane',
            :kext => 'com.github.osxfuse.filesystems.osxfusefs'
end
