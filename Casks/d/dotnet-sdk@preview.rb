cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.100-rc.2.24474.11,2d099a55-d6f5-43f8-bf05-fe90f023554d,03b79d057c06c1ae0855c8e8c5696680"
    sha256 "dd730a97f2781dcd1d474501b854838580332c2e52a9cfa90fcd87d3f99c36fd"
  end
  on_intel do
    version "9.0.100-rc.2.24474.11,71285611-e6d6-4758-8a5b-fec2b48fa25b,4aaf5fe8828150531679788c418a5920"
    sha256 "9e4a019acb3bd4b70ff8ac44d85d9f1d978657df750d4a9710d417d7f2981619"
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
