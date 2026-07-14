cask "dotnet-sdk" do
  # Differs from the `dotnet` formula by including additional closed-source components
  arch arm: "arm64", intel: "x64"

  version "10.0.302"
  sha256 arm:   "32240e6d439b281ae8622795c7c34db76030c4ff8d57d2ec394b5b6f012f6cf7",
         intel: "455960e99c5136ae4e376706e439c5743b808ecc924aee2c8ace6b3ab8df8fba"

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
  depends_on macos: :monterey

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
