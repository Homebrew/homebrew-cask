cask "dotnet-sdk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.200,0f1f23eb-004f-41a2-a4ef-e1a9b533a794,f2d47f0ed6a7be2027166ea1132cc806"
    sha256 "10e3df96b7dcb750dab7a07dee1c3db4cf7bf15deefd983abda372370d3c6356"
  else
    version "6.0.200,ba037891-7f55-4f23-9997-92c1b642117b,a643faacd4700bb4565eb83fb11b3293"
    sha256 "4211585bcb8cd9c7ad2e2a0d5388f26d2585ca9139e87d142bc2ba535c600986"
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
