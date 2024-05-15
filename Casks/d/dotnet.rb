cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.5,e8661f5d-6298-4848-bd34-b3618665d0c4,b259dab85d1283a192200bd814cef7ea"
    sha256 "3a63999aed3ca5ee123e9e68c7defa2488da8946b088ac4d033e6a5bd62e3146"
  end
  on_intel do
    version "8.0.5,181bf41c-91a6-451c-aa7c-b709d1ba79b0,cb44db162c74fa57cb91a04c6926de70"
    sha256 "decf9fb0b4db596289f1fdd698520f5242df05470937b6eafc7d7bb81836df51"
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
