cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.101,937c147f-28e2-4f09-b775-c3e3f910fa92,d44e678722d66d028061cd3cf09bfebd"
    sha256 "7777f0e6db89fc8cea9f8c6965fe4b41a0cf316d1f064ae2f3de8462abd4af97"
  end
  on_arm do
    version "7.0.101,ea9de698-864c-4ddb-8ff3-1bf068c6b1a7,cf5d147f2c167317394058deb4d4b0a7"
    sha256 "7a4f491a3f587a18b1249162bccc72157ed8bdb5600bdef32caeaa374a71f548"
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
