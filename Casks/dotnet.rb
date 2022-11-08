cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "6.0.11,3acbb93d-3983-4a98-9295-0c7045cec479,1b33b6742a6bf35fd46bd88a6d56f2ee"
    sha256 "0a607afe826a05d0656dbc17f5529a295ca1b7eaa3ac211882fdc4835a33d861"
  end
  on_arm do
    version "6.0.11,340274ea-9cf6-47e6-9fb5-920675a5d701,8c0acf90a29b1a7d2ce662ce66228a14"
    sha256 "eecc3bed224a56470a846a0e688f6a772fe33bd36b60c7a604d4f5cd20576a5e"
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
