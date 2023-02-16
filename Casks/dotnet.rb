cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.3,3ad8dd15-8794-4b7a-98d5-c3fc767a5480,92f8400f3246f6a9d02649a408c14ba9"
    sha256 "d3e0fecd642c9957935674725a1188adb7fad34f8cdaaf05b4812ff53c948b6d"
  end
  on_arm do
    version "7.0.3,ca648baf-c69c-44ba-9ce0-2cabd0d9cbd6,b0e730bf3a9794be9edfd0f5a77cedd0"
    sha256 "1bb000366dd400de8716ad400e75d6a44881ccf072b86d144b58df21808d3358"
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
