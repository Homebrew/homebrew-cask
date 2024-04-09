cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.4,8d8977c0-499c-405a-b687-00e7bca8c783,66057685d4fbdfe80b7b9dd96a47b45a"
    sha256 "aeb3529bff4a8f245f8cd957171ec813ada88f4d0ea579247e8598d65865df3b"
  end
  on_intel do
    version "8.0.4,4f3f1c85-67aa-4b3e-b4d2-951b9f8468ad,d6b7b5f7c5cea4f72417a4738da3d941"
    sha256 "811b7cc3f751e85d6c880275222097067ea996a300b0ef2f08affbabc4d50463"
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
    "dotnet-preview",
    "dotnet-sdk",
    "dotnet-sdk-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
