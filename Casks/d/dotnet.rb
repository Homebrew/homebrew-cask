cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "8.0.3,ce5fba93-9d2f-4f16-b091-76ad1be06f05,ea39bddf82f228c7ec293ef1a34ce944"
    sha256 "dd5c8fd3c72fa8435f29e4f9a06693e8724fbb7cc8f94667d01711ddf4785f27"
  end
  on_intel do
    version "8.0.3,02be54d9-bf36-4a01-8a68-cd0cc05e93f2,ab893ef01800b28b66a99c61c4dabdc4"
    sha256 "6207cf225a488ca54b199618e79a4341600461fc7c2789aa209b563185faaf09"
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
