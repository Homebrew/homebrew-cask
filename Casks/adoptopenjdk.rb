cask "adoptopenjdk" do
  version "16,36"
  sha256 "2d101b7bc4901c1a9554ba158b9eb4bf245b6dc314bd82078b1c9b85953ae5ae"

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

  caveats <<~EOS
    More versions are available in the AdoptOpenJDK tap:
      #{Formatter.url("https://github.com/AdoptOpenJDK/homebrew-openjdk")}

      brew tap adoptopenjdk/openjdk
  EOS
end
