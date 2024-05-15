cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.300,9f854d0d-dbb2-4bd0-a2e9-d46d0d612be8,142646adaedce26ccc67b020b0123f42"
    sha256 "07fb70e011e1bfe73b225c1f507ea49d8225c6cd4d7aaed9c0d4452fd4ccdd30"
  end
  on_intel do
    version "8.0.300,e7e9bfe4-8277-4b2f-946a-b49c2b910884,0a6c4853f7fec5d641087bf3ffabbd55"
    sha256 "469066cd3c4e49684af1de4f1de62a4a714a509e3089080f257f4b5376bdefe8"
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
