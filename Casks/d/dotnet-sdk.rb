cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.404,bc914058-c08a-44a2-a581-5c9807143b55,ddb7f2330a4250f28b15e1329bc11fa9"
    sha256 "8cd0c91195fc90ce83ade8b3fd6f8aabae77ee35deeb8820d1b94b802942a45b"
  end
  on_intel do
    version "7.0.404,81b6b736-1218-4bb0-9100-89945de897be,a2be9ad05a16c0b39c02f2328ccdc6b4"
    sha256 "e374bc81d680193d9ce37a79e544325d5ad5944d6dff51037148e4437e8362f5"
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
