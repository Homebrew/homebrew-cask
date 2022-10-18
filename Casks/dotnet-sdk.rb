cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "6.0.402,f55a179b-7084-41b9-98e3-408a3c317158,5445f9e747fa29ce0be3240017d28322"
    sha256 "54b1996c0879e9ea2c7490cd49e4f51de4c5f97c8c3c1535005e1efcf0bfc90c"
  end
  on_arm do
    version "6.0.402,1816a0af-0621-4608-b21a-9852ce83d788,04675dad54b50d6778db98f226f1b944"
    sha256 "43890a8fb8e9b0426b5cf0cac4e1954bc231c6e4c9dcde35e1ec12f93e900925"
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
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
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
