cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.13,42896d37-fbfa-4b3a-a255-ac6406befa9d,4b265e4d96e63140c8ae3e1e16ad604d"
    sha256 "0cfa68793be54273aef5183cba6338b6a2b396030c0caea51c095d8c4943ee9a"
  end
  on_intel do
    version "7.0.13,a47b5421-b267-4e39-bff9-9807ea2521a1,beedcca4f5106902ecfd9f934e35bb33"
    sha256 "4e38c5fc4c06e87be6a84dea234ae190e584d2e945c4d53619b291fa2bf7603a"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(\d+(?:\.\d+)+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
