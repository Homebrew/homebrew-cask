cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "6.0.9,d3fe77e7-3109-4b25-b74e-f2f3542164aa,daff158378a8e7f0aa7b61feb29b588b"
    sha256 "207e2d9c69406d16dafbca222534991cbcf86d7fbaea03800cbe7e9c6ecaa1b5"
  end
  on_arm do
    version "6.0.9,24ad61bd-2192-4637-a663-d4aaa39bfc21,03ce9a8420868b0f0777f35ac6faec98"
    sha256 "39f8912b4a38575a6e6fe48b6321b4fe41fb1bc91f719138f51ac16cb8b797ff"
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
