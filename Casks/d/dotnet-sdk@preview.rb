cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.100-rc.1.24452.12,556d3bd1-88f9-4193-899e-3253b3f1cb6e,81869aaa34551cd754dce5d2b7907a7f"
    sha256 "bba065df3b51fe8522e147231620c902f17c661e1f9dd22319ea8daaef4720fe"
  end
  on_intel do
    version "9.0.100-rc.1.24452.12,66064632-b4da-426d-8c92-964ef60a1705,d89d50709014f11cd6dd6118d0fe653f"
    sha256 "78c4b615758a1ea8c7e92d97af107c8835afaf3bb2ee6beeff47bf7c0608cced"
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
