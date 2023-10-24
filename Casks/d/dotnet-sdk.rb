cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.403,70b57ca7-7fcb-432d-bad9-809dbcfc35a7,8fca3fbc3f6e638edb29a908621cf9ba"
    sha256 "a4b38ad38a0f40bf6e8d473628c0231b511124cfd6701dc488f2f51da6db5fa5"
  end
  on_intel do
    version "7.0.403,4243dbe5-7173-4422-a073-b13395231cfa,808d2c3639437ef67630dc0083a0fbd6"
    sha256 "7b4d9fd4d003b681240eb9e79d757c30aa7437774a49a2a15dd7a09947476635"
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
