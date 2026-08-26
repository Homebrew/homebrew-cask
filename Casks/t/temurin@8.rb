cask "temurin@8" do
  version "8,504,01"
  sha256 "899960835a50e67670c8326df4e6160fbe7194201f48871e1a90fd1ca7aad58f"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.csv.first}u#{version.csv.second}-b#{version.csv.third}/OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}b#{version.csv.third.split(".").first}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/8/ga?architecture=x64&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk(\d+)u(\d+)-b(\d+(?:\.\d+)*)$/i)
    strategy :json do |json, regex|
      json.map do |release|
        match = release["release_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on :macos

  pkg "OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}b#{version.csv.third.split(".").first}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv.first}.jdk"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
