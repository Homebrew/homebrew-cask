cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  if Hardware::CPU.intel?
    version "6.0.400,2382b0d3-f865-4818-b3aa-47a94ccedba8,cd1eb0d061a1e1d8d0373603c4e82a97"
    sha256 "c31cde7a2a0f4f63e91229d3122ae5bb7f758b0cf3093b486b0e683f6d2a62a3"
  else
    version "6.0.400,a92daceb-cf41-4c37-8e70-8a158889a9b2,c027605fb8d8b51ee0892e10ed874ab8"
    sha256 "adb224aa775120fdaf88b48a890466853e8a8a0719c9de0199d79451b41ba7d3"
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
