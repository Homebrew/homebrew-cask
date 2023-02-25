cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.201,225948f7-3889-4bdf-9cf4-184e81216700,be35fbca24493ffbe0062c2f798e4461"
    sha256 "146f3ec4b682f0e3b1c9d1a0bc989d7998a6a26ec62e617d636669c59cd2f81e"
  end
  on_arm do
    version "7.0.201,86bb5988-5fb5-4e22-8f21-de5992e1a689,f8f616f84dc38100a8464c4644a371ce"
    sha256 "2d26783103c65b311d71bed82c67c62c93c158be95c2f2ac967ec8cd3dbcc34c"
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
