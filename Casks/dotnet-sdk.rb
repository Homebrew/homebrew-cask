cask "dotnet-sdk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.301,ee524e48-da60-4da3-bbde-a253c0f55f98,5190a50cc72112aa935c4a8d4d979c24"
    sha256 "c5ea940a28b0cc77fb6a0b5c8d1e1addcfbf91ed8df719bda0ff511a8a57c478"
  else
    version "6.0.302,7d98e8ca-e8ec-490b-8ffc-55a458981d86,32c92f3aa0f460119de53477cffa8a0a"
    sha256 "3f8acce92fd2fb1bafc9742fde3e389e7f3d609435052e7209f3ba4cdaee4228"
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
