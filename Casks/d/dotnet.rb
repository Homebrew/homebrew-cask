cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.14,a3293ecd-ac3c-47eb-944f-9d05e05fc0f8,54046b065e1eca27a4614706e32fc3e9"
    sha256 "f92dbd69c5201d0bae3226a8849ea1e50d15c41d25fdc33d55aae009b9833e43"
  end
  on_intel do
    version "7.0.14,3238a6cf-c89e-40ed-b726-e418c45d97ba,258f34b6a559a0302258c26c37603867"
    sha256 "60bf288a6f7295694572dec8568c8abdbbdca3431f74b34e1bf38123fe90bed0"
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
