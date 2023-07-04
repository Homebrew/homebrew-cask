cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.305,2dccbeef-704b-4bb9-984f-6d49ecef5e06,df1c7e68a77fc47ec0523942df43bbde"
    sha256 "925a7c0274100d9df6fd4e21b60278d9835b271ac387001bb637a78972c92b84"
  end
  on_intel do
    version "7.0.305,cc993071-2ecd-415b-a055-2918072bbfd4,545947633a386671807fc3f3db511295"
    sha256 "7e4918e12c3fb9fca97e58aef711359e27c5278fbfd83fbf5078ab9839c6dfbf"
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
