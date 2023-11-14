cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.100,cf196f2f-f1e2-4f9a-a7ac-546242c431e2,8c386932f4a2f96c3e95c433e4899ec2"
    sha256 "6cd607a4efd4565667249b98c7da2fb3f8281cd855ba7ca2de9183210395bda1"
  end
  on_intel do
    version "8.0.100,27a7ece8-f6cd-4cab-89cf-987e85ae6805,2c9ab2cb294143b0533f005640c393da"
    sha256 "67c3437cd5910e8ac1b0cc93e6d999ff237fe85b57f3e08753920a1a6ab30fde"
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
