cask "dotnet-runtime" do
  arch arm: "arm64", intel: "x64"

  version "9.0.8"
  sha256 arm:   "86815109fecdebbfeacbb770d744924a9a1834c697d23f6b6221e7d32784807e",
         intel: "9696372e82d3a1d3f2fa41b65c4ce31893c3f0f227195838effc0b4d82af3514"

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
    "dotnet-sdk@8",
    "dotnet-sdk@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :ventura"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
