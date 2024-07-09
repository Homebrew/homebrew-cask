cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.100-preview.6.24328.19,c0231fde-8a62-4e17-b396-25a4f8d6cf1e,753d07aa1f5d1652e6f69dab4fb588c5"
    sha256 "5b6df672e0d78612734f1086ab7707b839dbff24fd00a23aa1cd29884da0987f"
  end
  on_intel do
    version "9.0.100-preview.6.24328.19,c7132bf0-f591-4bbc-877e-bb881008c442,12a5262ac08f9d3d6e0cfabfc8806611"
    sha256 "1d03d4881cfbe5fe2c2276c86db4ceba83db3a258841bab0f5c6ec9dae6885e0"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(.+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
              "com.microsoft.dotnet.*",
              "com.microsoft.netstandard.pack.targeting.*",
            ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
