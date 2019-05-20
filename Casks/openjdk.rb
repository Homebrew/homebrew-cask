cask 'openjdk' do
  version '12.0.1+12'
  sha256 'db0e39ee1e747e436d41a110f037677540b2bc3f086b4fe4eaaca9f5c2de48ad'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_mac_hotspot_12.0.1_12.pkg'
  appcast 'https://github.com/adoptopenjdk/openjdk12-binaries/releases.atom'
  name 'AdoptOpenJDK 12'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK12U-jdk_x64_mac_hotspot_12.0.1_12.pkg'

  uninstall pkgutil: 'net.adoptopenjdk.12.jdk'
  
  caveats <<~EOS
    More versions are available in the homebrew-cask-versions tap:
      #{Formatter.url('https://github.com/Homebrew/homebrew-cask-versions')}

      brew tap homebrew/cask-versions
  EOS
end

