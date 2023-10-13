cask "temurin" do
  arch arm: "aarch64", intel: "x64"

  version "21,35"
  sha256 arm:   "a17f2759a448f177a5c89ec3def505f522c955566fb6a233f4549076159ab9e8",
         intel: "f8d6dd9155b5dcfe90c49ce9a13f6d541ce883aba53eaff5fba8b5b1696431ac"

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/info/release_versions?release_type=ga&architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    strategy :json do |json|
      json["versions"].map do |version|
        match = version["openjdk_version"].match(/^(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)(?:-LTS)?$/i)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end.compact
    end
  end

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  # No zap stanza required
end
