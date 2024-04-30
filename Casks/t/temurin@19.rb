cask "temurin@19" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.2,7"
  sha256 arm:   "cf740487eb79e5a4c7bc85a1a79b0bb71e58e30a7124b26506babf5aa8871224",
         intel: "60d33104b758c92a4b8560ff0517c7fd91820c26a1f7ee1710a3dc8949795ad3"

  url "https://github.com/adoptium/temurin19-binaries/releases/download/jdk-#{version.csv.first}%2B#{version.csv.second}/OpenJDK19U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg",
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

  pkg "OpenJDK19U-jdk_#{arch}_mac_hotspot_#{version.csv.first}_#{version.csv.second.major}.pkg"

  uninstall pkgutil: "net.temurin.19.jdk"

  # No zap stanza required
end
