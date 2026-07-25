cask "temurin@17" do
  arch arm: "aarch64", intel: "x64"

  sha256 arm:   "e709b76af0a28d1a0ebffe042a6c90082ef56343508c57fa4955227d8937f6e4",
         intel: "d074b50af1b3674942b48a4939fc854c577bf8e96a2be0f1102fca573cce2f8a"

  on_arm do
    version "17.0.19,10"
  end
  on_intel do
    version "17.0.20,8"
  end

  url "https://github.com/adoptium/temurin#{version.major}-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK#{version.major}U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
      verified: "github.com/adoptium/"
  name "Eclipse Temurin Java Development Kit"
  desc "JDK from the Eclipse Foundation (Adoptium)"
  homepage "https://adoptium.net/"

  livecheck do
    url "https://api.adoptium.net/v3/assets/feature_releases/#{version.major}/ga?architecture=#{arch}&image_type=jdk&jvm_impl=hotspot&os=mac&page=0&page_size=1&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse"
    regex(/^jdk-(\d+(?:\.\d+)+)\+(\d+(?:\.\d+)*)$/i)
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
