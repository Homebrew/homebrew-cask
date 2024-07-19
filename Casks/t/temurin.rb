cask "temurin" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.2,9"
  sha256 arm:   "c42b09179de5ffe8aab0121583ab140b62d0fb2f8c0e5fbce04d12bedccf22c5",
         intel: "806001ce37dc6b0163d64effc0f5a4f90b805d0c8849be62c0a2b2b4cb86a88d"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/info/release_versions?release_type=ga&architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    strategy :json do |json|
      json["versions"].filter_map do |version|
        match = version["openjdk_version"].match(/^(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)(?:-LTS)?$/i)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  # No zap stanza required
end
