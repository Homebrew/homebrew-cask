cask "temurin@25" do
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "dd8a5213663e96e152a384a302e2a69e9b73d8a10f0474b5b2a9a9a940250f07",
         intel: "ae657a5caf2eb78d5fd28e84dbf7283e2b7a7ee947a43547a85d9190df01f87e"

  on_arm do
    version "25.0.4,7"
  end
  on_intel do
    version "25.0.4,7"
  end

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin 25"
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
