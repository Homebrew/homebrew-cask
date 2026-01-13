cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  version "10.0.102"
  sha256 arm:   "b2731697e2ce6723f04b53b280424383f9dd027f75b7ad714d84e49ff8e0fe8b",
         intel: "0109351e20ce953e83718bf2be8fa31a0415df5188de3b3600e22235c3e7379c"

  url "https://builds.dotnet.microsoft.com/dotnet/Sdk/#{version}/dotnet-sdk-#{version}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release.dig("sdk", "version")
        next unless version&.match(regex)

        version
      end
    end
  end

  conflicts_with cask: [
    "dotnet-runtime",
    "dotnet-runtime@preview",
    "dotnet-sdk@preview",
  ]
  depends_on macos: ">= :monterey"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"
  binary "/usr/local/share/dotnet/dnx"

  uninstall pkgutil: [
    "com.microsoft.dotnet.*#{version.major_minor}*#{arch}",
    "com.microsoft.dotnet.sharedhost*#{arch}",
    "com.microsoft.netstandard.pack.targeting.*",
  ]

  zap pkgutil: "com.microsoft.dotnet.*",
      delete:  [
        "/etc/paths.d/dotnet",
        "/etc/paths.d/dotnet-cli-tools",
      ],
      trash:   [
        "~/.dotnet",
        "~/.nuget",
      ]
end
