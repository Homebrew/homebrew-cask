cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.9,f60a91ca-5f28-4fc5-99c4-c5c73cbf1302,96070a6b372d1dfa3eea416f6d3bd8af"
    sha256 "bad13af283bc8f4517ec62b0f27499ec36841c0e8899765476a5acfb50f40ccd"
  end
  on_intel do
    version "7.0.9,915a7546-ac65-4f7f-bab8-4e472547034b,7ba12f89b0ea3a0aae72f6fe37c46b4f"
    sha256 "86c355f01d4b356c4ae9081e4469a55feb3db063c7c8cb4baca25959c3b36fae"
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
