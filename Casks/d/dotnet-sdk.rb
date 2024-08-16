cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.401,1764cd94-29ac-46b2-b308-77d02b47486d,8397cdc3d842a60f062f1a08199a4974"
    sha256 "e0fbe2f349d9424eeaa7c7edf6b2352cda32f2ecf80e23a8f3da51fa9dfefa2c"
  end
  on_intel do
    version "8.0.401,62d5b0f6-e67e-4d89-9758-e285c407eb6c,38cd1ca749bffd444fe4fc1cedf3b692"
    sha256 "c431162f1b26e93b0d696012cf3a594cca9a0eee398e22298931602cce84476a"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    cask "dotnet"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(\d+(?:\.\d+)+)-osx-#{arch}\.pkg}i)
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk@preview",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
              "com.microsoft.dotnet.*",
              "com.microsoft.netstandard.pack.targeting.*",
            ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
