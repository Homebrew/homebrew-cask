cask "adoptopenjdk" do
  version "15.0.2,7"
  sha256 "f3b867c04a12eec2526492f91a228fade480b1c592ea336eeb9fd66bef86e4c4"

  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
      verified: "github.com/AdoptOpenJDK/"
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name "AdoptOpenJDK Java Development Kit"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jdk"

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url("https://github.com/AdoptOpenJDK/homebrew-openjdk")}

      brew tap adoptopenjdk/openjdk
  EOS
end
