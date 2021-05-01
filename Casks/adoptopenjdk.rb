cask "adoptopenjdk" do
  version "16.0.1,9"
  sha256 "7308a15d054d07d504f616416b3622d153c3cc63906441a5730ca1f9d4a43854"

  url "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/download/jdk-#{version.before_comma}%2B#{version.after_comma}/OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg",
      verified: "github.com/AdoptOpenJDK/"
  name "AdoptOpenJDK Java Development Kit"
  homepage "https://adoptopenjdk.net/"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^jdk-(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)$/i)
        "#{match[1]},#{match[2]}" if match
      end.compact
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_x64_mac_hotspot_#{version.before_comma}_#{version.after_comma.major}.pkg"

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jdk"
end
