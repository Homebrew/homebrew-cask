cask 'adoptopenjdk' do
  version '11.0.2,9'
  sha256 'fffd4ed283e5cd443760a8ec8af215c8ca4d33ec5050c24c1277ba64b5b5e81a'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK11U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.tar.gz"
  appcast 'https://github.com/adoptopenjdk/openjdk11-binaries/releases.atom'
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
