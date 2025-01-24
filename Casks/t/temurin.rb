cask "temurin" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2,7"
  sha256 arm:   "ea222ea18eb240eb6e585c803a699c1afdeba645e0cb8acf55e39b009d5a4cbe",
         intel: "4a967b483a9f2010cf3b3ad7f2300031d1cea04bdc5ef6fde055391bc8e375d3"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/info/release_versions?release_type=ga&architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)(?:-LTS)?$/i)
    strategy :json do |json, regex|
      json["versions"]&.filter_map do |version|
        match = version["openjdk_version"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  # No zap stanza required
end
