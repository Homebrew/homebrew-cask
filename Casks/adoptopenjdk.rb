cask 'adoptopenjdk' do
  version '13.0.1,9'
  sha256 '29f1c87b3ecca38c50ea016657368af0a6a28ade5ba4150bd147ad91c524ea22'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13.0.1%2B9/OpenJDK13U-jdk_x64_mac_hotspot_13.0.1_9.pkg'
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK Java Development Kit'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK13U-jdk_x64_mac_hotspot_13.0.1_9.pkg'

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jdk"

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url('https://github.com/AdoptOpenJDK/homebrew-openjdk')}

      brew tap adoptopenjdk/openjdk
  EOS
end
