cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.201,225948f7-3889-4bdf-9cf4-184e81216700,be35fbca24493ffbe0062c2f798e4461"
    sha256 "146f3ec4b682f0e3b1c9d1a0bc989d7998a6a26ec62e617d636669c59cd2f81e"
  end
  on_arm do
    version "7.0.202,d569fc95-64b5-4fc3-ae06-5d3bec40e540,7532a322362c4717fc57211eafe5002c"
    sha256 "48a45898dc3e3a92f91f9e10c7d17a657e55399669e4cdf1917f1649c2338444"
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
