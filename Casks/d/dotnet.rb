cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.10,fd2985f3-9c48-48f5-aa1f-b44048867c07,3900dd411441277fe4c01515ec099a50"
    sha256 "4337812ca02a5e7b7baa415acdb3e02860e20ab54c1a59f2c716434f77565c89"
  end
  on_intel do
    version "8.0.10,39438218-9735-41f4-ae9d-12cde5faf85e,9c8ceefa41c57929ae626d5ff64d7b56"
    sha256 "71faabad7c82fc4d89c6fda4b7ed9174baa1b8399b3b41e46111d9e29a0c10e0"
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
