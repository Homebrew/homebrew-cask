cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.102,17798684-12da-417d-845b-8d2f54b3bd67,d6a67ffe06f263906571aacf7057bc8e"
    sha256 "ed7c0621f3edf89f2a7390d7d4cc0cfe577b896b7f44d0e3669780e1bd704fc0"
  end
  on_arm do
    version "7.0.102,dfbffbab-2187-44a8-b911-308136f001c1,8c754f776f6a476f6ab6681d72d88b2e"
    sha256 "8fcc6de227185e4666d32a24f9109779e612dd55460ca312a66978b97680cfb1"
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
