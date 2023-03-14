cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.3,3ad8dd15-8794-4b7a-98d5-c3fc767a5480,92f8400f3246f6a9d02649a408c14ba9"
    sha256 "d3e0fecd642c9957935674725a1188adb7fad34f8cdaaf05b4812ff53c948b6d"
  end
  on_arm do
    version "7.0.4,e3f2fe23-5f8f-472a-8c90-e2fd71840bbe,b8cea84bdfa8f27dc68c44ec7faa32f9"
    sha256 "4ae9a5ba82328aa9f7cd38158455cde4dc022503fe571f73ab77cbdc78f805e8"
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
