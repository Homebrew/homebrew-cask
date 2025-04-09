cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  version "9.0.203"
  sha256 arm:   "03608b761ea4c271f1693ea87d743ec50187ee6dc198061404743017c2b85994",
         intel: "2d99e0836846703e7d85d3fff21bd14f06effb9f5847ae422a04e807820dd4fa"

  url "https://builds.dotnet.microsoft.com/dotnet/Sdk/#{version}/dotnet-sdk-#{version}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release.dig("sdk", "version")
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

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
