cask "temurin" do
  arch arm: "aarch64", intel: "x64"

  version "25.0.1,8"
  sha256 arm:   "827672503ebcc0596e4d9f8ca7dd56a3f88a072cf02e660e52f1807503ce4ae8",
         intel: "94b2189dba5d8d9aca515d1dcad6883b0465ed5449717c3009c9234dc4367e54"

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
