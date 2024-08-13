cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.8,454e6d99-5836-4c51-947e-b75220eebd09,fcbaecbeaa1f95a8ac80aae62e8718b0"
    sha256 "31b152d4e2c12683ca2119af45cf5d4edce499e9f9f9fc93e449bab702b93518"
  end
  on_intel do
    version "8.0.8,13a441ce-6908-4f4d-9615-0fcb80e2b41d,b9309626d2013d4e21bd6b0fe405e5f6"
    sha256 "b91e4388ba3d2c41fa89ae57f4c0f95ed5076ee007a26fb5f618e4ec877c1dca"
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
