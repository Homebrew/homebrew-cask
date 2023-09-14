cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.11,238745c8-e7da-43bd-aeb6-3104dae4f5d8,85cec9809108afd239acbe215ba60231"
    sha256 "3fe12b189befc7eceb7e692e7225a5f30b5cb4ba9936d3863f31a5b00bd867d1"
  end
  on_intel do
    version "7.0.11,9fc3bdba-51c6-4a7b-a793-74efa9d34592,7170c728ed1f6376bba399d8424da94c"
    sha256 "06d2ba50efa8cfddc4fb3fed55992c9a16c904c67fca3120ad51909a33660d20"
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
