cask 'adoptopenjdk' do
  version '13,33'
  sha256 'f948be96daba250b6695e22cb51372d2ba3060e4d778dd09c89548889783099f'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK Java Development Kit'
  homepage 'https://adoptopenjdk.net/'

  artifact "jdk-#{version.before_comma}+#{version.after_comma}", target: "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.before_comma}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url('https://github.com/AdoptOpenJDK/homebrew-openjdk')}

      brew tap adoptopenjdk/openjdk
  EOS
end
