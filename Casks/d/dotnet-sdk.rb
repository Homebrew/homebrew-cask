cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.403,35b0fb29-cadc-4083-aa26-6cecd2e7ffa1,1a9972a435b73ffdd0b462f979ea5b23"
    sha256 "29844599f2e41002af2605a9811344399b6b50369cf993d91569a1a7909f1293"
  end
  on_intel do
    version "8.0.403,d6b3fe61-3c0e-45da-9e37-cef64d4fd3eb,28d536e0ecfbb330ab49454a5e3962f6"
    sha256 "cda9f5737413adc752838efb55bc52d631da395d400884506182b8893d6a9949"
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
