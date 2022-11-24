cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.0,79e87fe7-1e4d-4128-b655-2af302df2d3f,30f2bbf3f79f6b790cd918c425b9e1ea"
    sha256 "b68d125a63121c2dbb3245c3456a94cf6ee5b937739a2bd20bff1fc4ac210b2b"
  end
  on_arm do
    version "7.0.0,e5e32c3c-995c-4ca3-ac93-c4f3a3ebf9ad,9c098971b58b58236eac14a1afe14214"
    sha256 "81fd302f876168800d80901fafc31fa94c36fcaf68839f73c883a56b7f5a8ea7"
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
