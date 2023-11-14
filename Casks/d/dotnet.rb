cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.0,afde1c3f-4e87-402f-8e38-44ea71a6f5f5,cfd54a005105ca0ea48fbc189155cbe4"
    sha256 "8e6b825a867887d88154c38af3ec2a29457601fcc076bb5afb801ff80af71a39"
  end
  on_intel do
    version "8.0.0,5a409864-2f8c-4801-9fa2-6913c487218d,919476e4f52ee910b7c1bb9cfdefa746"
    sha256 "938454faa6b6dee7c85bfcc02e3fef82245fcea0deeb96812d5262683fb49aa7"
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
