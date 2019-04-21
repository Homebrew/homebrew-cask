cask 'adoptopenjdk' do
  version '12,33'
  sha256 '985036459d4ef0867a3fe83b0bf87877d8e66a121c7b9c145bb97bd921aaf3f1'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk#{version.before_comma}-binaries/releases/download/jdk-#{version.before_comma}+#{version.after_comma}/OpenJDK#{version.before_comma}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast "https://github.com/adoptopenjdk/openjdk#{version.before_comma}-binaries/releases.atom"
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
