cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "7.0.1,7f711bc0-aeea-41a0-b5fe-070305902f54,1d3703a0476e12d9b6ac96677c29e34d"
    sha256 "f146bd8d12b07c9d30b076098ef4ed24236ccc74b33eaef8ea2e15e0f0f0ca9c"
  end
  on_arm do
    version "7.0.1,3213306c-79a0-48a0-838b-c3df84e53832,742b1fc902f5cdb4d50b966957cb29e3"
    sha256 "3d4b849a771544d427498bd909f2c48f51b637bd7d01aaff24f3a7a3db4a3d8f"
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
