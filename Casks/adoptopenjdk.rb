cask 'adoptopenjdk' do
  version '12.0.1,12'
  sha256 'dcb2ab681247298eda018df24166ba01674127083fb02892acf087e6181d8c56'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.major}-binaries/releases.atom"
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
