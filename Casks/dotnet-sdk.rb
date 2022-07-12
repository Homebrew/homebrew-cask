cask "dotnet-sdk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.302,7257dada-8ec1-4b5c-9b69-7201a2cf377f,89f452882fb87fbb89d697417cb3f231"
    sha256 "863a6b5a8ba6b0b2c1674bc952358e31c33cb0f4d98e8e6767241642bd1db9d1"
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
