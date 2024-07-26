cask "temurin@8" do
  # NOTE: Last update was for jdk8u422-b05.1 "point release" re-build, next release will need to remove the version.csv.fourth...
  # in 4 places:
  #  version string : remove ",1"
  #  url : remove ".#{version.csv.fourth}"
  #  regex : remove "\.(\d+)"
  #  livecheck strategy version string : remove ",#{match[4]}"

  version "8,422,05,1"
  sha256 "809d7c0b6c7c2fd483711fb784e4fb101ad431c71dc8e96aa9c2cffaa8bfa7b7"

  url "https://github.com/adoptium/temurin8-binaries/releases/download/jdk#{version.csv.first}u#{version.csv.second}-b#{version.csv.third}.#{version.csv.fourth}/OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}b#{version.csv.third}.pkg",
      verified: "github.com/adoptium/temurin8-binaries/"
  name "Eclipse Temurin 8"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/8/ga?architecture=x64&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk(\d+)u(\d+)-b(\d+)\.(\d+)$/i)
    strategy :json do |json, regex|
      json.map do |release|
        match = release["release_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]},#{match[4]}"
      end
    end
  end

  pkg "OpenJDK#{version.csv.first}U-jdk_x64_mac_hotspot_#{version.csv.first}u#{version.csv.second}b#{version.csv.third}.pkg"

  uninstall pkgutil: "net.temurin.#{version.csv.first}.jdk"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
