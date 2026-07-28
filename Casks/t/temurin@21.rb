cask "temurin@21" do
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "1c1721d5df6c2ab2edd8d2801bac07a8895b051e51b1946b1897d0a712138115",
         intel: "b1be778ed2376da8c44797afd11a492c0e207f6307a4fd84b72cbe452a46b4a5"

  on_arm do
    version "21.0.11,10"
  end
  on_intel do
    version "21.0.12,8"
  end

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin 21"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/#{version.major}/ga?architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk-(\d+(?:\.\d+)*?)\+(\d+(?:\.\d+)*)(?:-LTS)?$/i)
    strategy :json do |json, regex|
      json.map do |release|
        match = release["release_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on :macos

  pkg "OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.#{version.major}.jdk"

  # No zap stanza required
end
