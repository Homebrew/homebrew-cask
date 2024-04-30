cask "temurin@20" do
  arch arm: "aarch64", intel: "x64"

  version "20.0.2,9"
  sha256 arm:   "83e1539a97684fc30d291e104afc9df22deb83e0554e9df581010ebea284210a",
         intel: "eeb481cf22c2c6ce30d6ed924b30bf1ab5d0df9e0ebfe6178649ad2819a6cd8c"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url :url
    regex(/^jdk[._-](\d+(?:\.\d+)*)\+(\d+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  # No zap stanza required
end
