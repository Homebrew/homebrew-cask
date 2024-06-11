cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.100-preview.5.24307.3,4138605e-d1df-4672-b024-862b8b1bc4dc,bbf19075238cb836aa0483014f8174e3"
    sha256 "f42fe838b24c13587719ecbc8267d430c4361c3d71038761779ca619378c52d4"
  end
  on_intel do
    version "9.0.100-preview.5.24307.3,f4139839-15fa-4ef6-a1b0-fb77ee467b2e,7529958cc121871a79d3da1a0f851333"
    sha256 "2d9d3f027b038dbeb7ec2a4ffd15e43b979d691d9155b79d0019fdb1dfca02bd"
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
