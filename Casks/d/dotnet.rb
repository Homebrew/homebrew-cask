cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.1,a7984b93-92dc-41e1-996c-fd059c17afb4,c44ed6a09d648e289e49002c0d7297c2"
    sha256 "47a212731dbdb97f8d3a424a6f8a0d5bf2cbe7963faf3a6a48a424d5a4bebf7b"
  end
  on_intel do
    version "8.0.1,2dc0cd09-9e3d-4329-b01b-12b417e610de,38a37e5f8b93ef55e6630f216265293a"
    sha256 "5872063bb45f3e9b3e4bcf93384f00e6fd4a95230db66ea5089a589ecb8a52e7"
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
