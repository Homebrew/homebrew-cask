cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.7,ae4430fd-26d6-4bd3-838a-314ffd356c78,24147e9a69b371bea66a1789bda6a1d5"
    sha256 "c63e6b54f70295573ce76c93c35adf9e8c2c3473e832024b801f5cc2c2d3ecdc"
  end
  on_intel do
    version "8.0.7,4f7ffd35-2e7a-4a42-b096-7b344ddbb514,bb2e3a4af76ab0f3c39fd01bb0b51e6f"
    sha256 "d3641fc56c63787c2ceba18ff7c298270d76eb3b34afbf5afc45daaf4161e441"
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
