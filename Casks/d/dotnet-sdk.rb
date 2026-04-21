cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  version "10.0.203"
  sha256 arm:   "535916245b7f89ff35c1e408352fda812ecd643fd93385bde2cb008185b38884",
         intel: "c4b66e9bd445eb1ff7c0bd4b79dbbabcb733a223bff9c98f1b670494a44998e7"

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
