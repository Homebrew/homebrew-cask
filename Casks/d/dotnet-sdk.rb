cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.301,b07f0bc8-ce20-45e5-879a-a931beae3ca5,67426313b0bb8bc63ded3aeacaedca5e"
    sha256 "5b70f6c13ef1d58eb2ea1ef5725ee56f01f3beec0f898fd6dd4ab52f1378f77a"
  end
  on_intel do
    version "8.0.301,825222be-354e-452e-ae45-f116d86ee0d3,c4ac600bb62a44265d54b8de48c1b273"
    sha256 "cbaf85ab99b2d4c430343ca9116abf823abcd92aeb0578f19b927fc2f376552b"
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
    "dotnet-sdk@preview",
    "dotnet@preview",
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
