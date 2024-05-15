cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0-preview.3.24172.9,9e33acd8-adc5-4359-a4a9-e7c538b6ab1f,dde8a2b81d4d6beb63e201781f65f19b"
    sha256 "a8a6cbf4d4e7e27f2261566fd52b85f13254f5b23559ec5ea224276dea69f180"
  end
  on_intel do
    version "9.0.0-preview.3.24172.9,c78a2485-5638-4936-9c47-f7811c1bc8c2,0bc4ad7a2a12f347931f29df84fd4da0"
    sha256 "cdcdecaaebfab020f755f198ead79409cf2e7275e2cd81def4d7aa0b90ec2c08"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
