cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.6,ea249dde-337d-417d-a615-1f2e0a29b1fc,ef9f8aab388fc5f9ef11a188c4da92fd"
    sha256 "d1c0ee538d8fcebf985bedcb295e53f885ce7b00bbef35e61434c244cd5137f2"
  end
  on_intel do
    version "8.0.6,9d3fae98-a6af-4ce8-868a-db721c5825a1,e70f1e87a433ab1fbf6b94eb5d0c162d"
    sha256 "ac2bec001c4b1dd4cce25c89d2a97dfd59ded224fbdfcc2515c9b7b2c2703456"
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
    "dotnet-sdk@preview",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
