cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0-preview.4.24266.19,7e461d11-8e26-429b-a35e-6f67c84d5b3f,0d7cfe48dcbfaa6a8284850793c984d7"
    sha256 "66a6a5d013a08a596e5258fddb496e948bdaf32ccfe855fd77cea4004bdd2cb6"
  end
  on_intel do
    version "9.0.0-preview.4.24266.19,73f4cbbe-9a84-4403-ab5a-4ea15abe6890,95fb54f4ccd9024e7d41cee510cf3fa6"
    sha256 "96250c1b17e46d066bdbb9244cc3110e75a5a8ed228bf6123e480d8a91eca1f0"
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
