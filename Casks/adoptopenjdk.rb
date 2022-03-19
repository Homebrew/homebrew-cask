cask "adoptopenjdk" do
  version "16.0.1,9"
  sha256 "7308a15d054d07d504f616416b3622d153c3cc63906441a5730ca1f9d4a43854"

  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/AdoptOpenJDK/"
  name "AdoptOpenJDK Java Development Kit"
  desc "JDK from the Java User Group (JUG)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jdk"

  caveats do
    discontinued

    <<~EOS
      Temurin is the official successor to this software:

        brew install --cask temurin
    EOS
  end
end
