cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.203,1951c62f-487d-4002-b3e6-92677e88b8b1,b1ed2348dbe68ac3f499252b7c9017e4"
    sha256 "cce7e9f2404089fb02ffaf56a3255c5320a3ee8e86934bee71a661697fb0d4a5"
  end
  on_intel do
    version "8.0.203,bcfcba7d-4a1d-4435-95c2-7c4143e01007,68804b02e9a3bcfd6f26b04d01219791"
    sha256 "3581b0df0edb93dba281b9cbc7bc69d588352a3cdbb5e688833ed221fe9d1ec9"
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
    "dotnet-preview",
    "dotnet-sdk-preview",
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
