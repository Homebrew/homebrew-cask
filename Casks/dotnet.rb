cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.2,c5c4b5b4-490d-48d3-8645-ed77cb7134ce,e5aea24b7b2a548b2666fa5785e51587"
    sha256 "08f62b2fd6d6878d534b52f55296d1f9e9a90bebe4f0c4a18dc076194878e042"
  end
  on_arm do
    version "7.0.2,90889739-38b2-4a49-8c97-ee1884d703ae,9f3f6c2de5d357f1905fde9910300072"
    sha256 "07df1177dbf864e8ecfeecc3b46f87d088497a5f767e233d62b5599fa178713c"
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
