cask "dotnet-sdk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.101,83e6b9b3-a78e-4df7-b33f-78a38a1db0c7,b1641cad9024c212bafdd6273f3d5e19"
    sha256 "31414204e26119baf10eaa035ff1b30e98df1bd57c5d86800fd95c5a4b7caa20"
  else
    version "6.0.101,43027810-8a5a-40bf-a10a-c3e8d9adef48,e11706837e6380a1760438d0787e9b72"
    sha256 "429a2759df7adaba9c29ca4b4d1b4c3a7dc393b5f5238ab77d90203eced0fafd"
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
