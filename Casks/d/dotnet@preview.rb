cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0-preview.7.24405.7,f79b68ef-768b-462d-a96a-33d7a8129021,94bcf8b454c20f901564223fcc5b4e76"
    sha256 "ed166afd538a1eb138de22099a3675711f03f5f2b6065ccb531c4da66cfed9ec"
  end
  on_intel do
    version "9.0.0-preview.7.24405.7,117d87f9-aa46-4ca0-b884-a04580c7edac,3cdfbfd89b544c9726aedd7b32e00d3d"
    sha256 "7bdcde494f2601629f7c731bc98679fac1da156faf298f2d20b398fea0ca5923"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
