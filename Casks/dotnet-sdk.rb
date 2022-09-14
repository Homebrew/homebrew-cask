cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "6.0.400,2382b0d3-f865-4818-b3aa-47a94ccedba8,cd1eb0d061a1e1d8d0373603c4e82a97"
    sha256 "c31cde7a2a0f4f63e91229d3122ae5bb7f758b0cf3093b486b0e683f6d2a62a3"
  end
  on_arm do
    version "6.0.401,1011a115-ca23-4bad-8632-f9a96e47d0f0,164a08cde051b61a1669d2242770ef25"
    sha256 "74898e91854bf89fd06a47efabc7fbc275ac2e80d7ed44beb6d6d20db39017ac"
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
