cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.7,704d2a8e-9fb9-450b-ae57-fa8b36751d8b,0e637cfd1404fa3cc914f0a4f81f585e"
    sha256 "a89ef5cba0090610c23ad56a4343a1d6c4945b4891138678af250ab863264280"
  end
  on_intel do
    version "7.0.7,c74c2280-9b07-4c9e-a0cb-50d02b2cff86,5fde594ede7b2068711244e11de0e27a"
    sha256 "04f36040d61cbcf796d36ecefc75ee3301114088c2a0ada8fe98943bbdb60262"
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
