cask "adoptopenjdk" do
  version "15,36"
  sha256 "10ced23791428f002940c91c6d86aec3e701faf4478ddbb29a81ea3977a955b4"

  # github.com/AdoptOpenJDK/ was verified as official when first introduced to the cask
  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.pkg"
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name "AdoptOpenJDK Java Development Kit"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jdk"

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url("https://github.com/AdoptOpenJDK/homebrew-openjdk")}

      brew tap adoptopenjdk/openjdk
  EOS
end
