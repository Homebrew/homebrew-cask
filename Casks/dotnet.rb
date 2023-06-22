cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.8,92c6b5dd-f636-48ad-9692-fdb6e3b2a80c,ab14c80606b82d1653d66e9ee348fcea"
    sha256 "24bb3e438cb0518c9fe3a6a2bc3b793deb2e48b15271dcc7afcff106395358ad"
  end
  on_intel do
    version "7.0.8,606e72c5-ed7d-4120-b73b-699fe486dbdd,49e7883608e7f9ef6263489baca0b0a5"
    sha256 "b2496396a208c17733811de898041122c39a53c9a4940d745dd3a7d171c304e9"
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
