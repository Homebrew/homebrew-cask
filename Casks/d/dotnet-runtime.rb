cask "dotnet-runtime" do
  arch arm: "arm64", intel: "x64"

  version "10.0.2"
  sha256 arm:   "329593d3703036eaa9c766e426f1dc36e45ecb4537e24e6fc2c28329226e2830",
         intel: "678c5b67fc7c79b847d62a44ce7ec1d71316bf7ddd595fa6e1cdaf8068287bdd"

  url "https://builds.dotnet.microsoft.com/dotnet/Runtime/#{version}/dotnet-runtime-#{version}-osx-#{arch}.pkg"
  name ".Net Runtime"
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
        version = release.dig("runtime", "version")
        next unless version&.match(regex)

        version
      end
    end
  end

  conflicts_with cask: [
    "dotnet-runtime@preview",
    "dotnet-sdk",
    "dotnet-sdk@preview",
  ]
  depends_on macos: ">= :monterey"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
