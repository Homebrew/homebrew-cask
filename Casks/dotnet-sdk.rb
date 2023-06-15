cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.304,53f2dc54-c56d-4bc2-b7ac-4705565f1f58,ce10a5e5e5ed4acf1ea3caf443ecbd2e"
    sha256 "788f125b3ce3cae7e24afca788d60704cb115d0ea5c2cde088038db1f1eb0619"
  end
  on_intel do
    version "7.0.304,6e4a2a04-483d-42d4-8cbd-27257c47a8bf,52917aad4fb720797c351e38fb706531"
    sha256 "a1abd5a89b7c7ec309c211fc69654c7d30d3279b9be9fe59b0d4a72a61da0fd7"
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
