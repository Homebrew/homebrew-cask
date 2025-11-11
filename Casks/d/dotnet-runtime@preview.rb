cask "dotnet-runtime@preview" do
  arch arm: "arm64", intel: "x64"

  version "9.0.11"
  sha256 arm:   "b2dfa90b3ee2002f8af81e4cf1051f8980b408c757a99d5451aae3ebd9077ea4",
         intel: "cdc2cfa32db4458a83d452f4b2a7db8d5d01610b516da631f186a366567d9d57"

  url "https://builds.dotnet.microsoft.com/dotnet/Runtime/#{version}/dotnet-runtime-#{version}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release.dig("runtime", "version")
      end
    end
  end

  conflicts_with cask: [
    "dotnet-runtime",
    "dotnet-sdk",
    "dotnet-sdk@8",
    "dotnet-sdk@preview",
  ]
  depends_on macos: ">= :ventura"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
