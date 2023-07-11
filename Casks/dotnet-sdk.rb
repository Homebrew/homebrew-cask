cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.306,4cfe3db4-4922-404d-b2de-db478a9a6c4a,5ec100c639e38cac64a61a02c9ab4df7"
    sha256 "50a412b0e7e4da20d846de5afe17ea0874697db044b049ab2021eef8824e6b34"
  end
  on_intel do
    version "7.0.306,534a66a3-31a4-4cf7-9866-319414f5876d,f6e644cc2bdcab7801efef1c533e8400"
    sha256 "129c927b3e0446bec06583f659d2f6681e6551b2ef7c7f258bc0b3ca97b7c214"
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
