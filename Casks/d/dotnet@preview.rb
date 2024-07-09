cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0-preview.6.24327.7,95fc5ad6-2935-4afb-aaa9-6e3a85096c9b,df3060250716bf7813aa2e6258dbabf1"
    sha256 "156408f5825a7162a3326544ef8c408e3c288113fe257465151422b9c803c0ab"
  end
  on_intel do
    version "9.0.0-preview.6.24327.7,b5e90a5c-5ac5-4a74-8066-afb3f9616737,3aba6bd3250ea5f6a537be3c0a982c6a"
    sha256 "220578714334f2b4611d50e33f4688b88dbc2a3daed9b1b153d521358520ee38"
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
