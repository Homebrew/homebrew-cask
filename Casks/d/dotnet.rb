cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.0.10,024bc4f5-660a-4e35-ad1b-5ce1c7bfcdcd,f960bd590ef4d9610272b21182ad0590"
    sha256 "b86e66a325b25cb1f146104dfa09e44655c0dc2a76cd75b48bdd0356fe083a1a"
  end
  on_intel do
    version "7.0.10,01f15ec6-0c10-4e0a-bd10-efd247c78223,95cad690b8ed83850a4355c043964925"
    sha256 "87745e7cde8c91465ebb7dacd5b879bc9004415c5865953a17099441aa6ad8f6"
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
