cask 'adoptopenjdk' do
  version '12.33'
  sha256 '985036459d4ef0867a3fe83b0bf87877d8e66a121c7b9c145bb97bd921aaf3f1'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.major}+#{version.minor}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.major}_#{version.minor}.tar.gz"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.major}-binaries/releases.atom"
  name 'AdoptOpenJDK Java Development Kit'
  homepage 'https://adoptopenjdk.net/'

  artifact "jdk-#{version.major}+#{version.minor}", target: "/Library/Java/JavaVirtualMachines/adoptopenjdk-#{version.major}.jdk"

  uninstall rmdir: '/Library/Java/JavaVirtualMachines'

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url('https://github.com/AdoptOpenJDK/homebrew-openjdk')}

      brew tap adoptopenjdk/openjdk
  EOS
end
