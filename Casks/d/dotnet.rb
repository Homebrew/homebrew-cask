cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.2,4e5292ef-8f26-4ead-9632-03243fd4f907,761efaa7a63c52d69e6ef085b338ff41"
    sha256 "dfb992ae4bb580d044fde55578626af5ddfdce239f763dd0bc2af4e2dd9b1aec"
  end
  on_intel do
    version "8.0.2,d9899395-7f5a-45b4-acd0-8f0ad2d3dad8,008391ac2859dc0fca2eed8ff6bdd3f6"
    sha256 "efbc0f0954e4378d8cb38e4f2337a681db1b34cf53ae0f290964ec46ab68034c"
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
    "dotnet-preview",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
