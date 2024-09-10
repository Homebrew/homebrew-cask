cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0-rc.1.24431.7,cbe92155-7b32-44c2-8544-da54f51e1aff,89a8488bec9e2b8baf1b44691de76591"
    sha256 "0dcd9dcf4e6bb666e8e4cdb8bee1db2dd177ce19388a8e777e479bf6880a4eb0"
  end
  on_intel do
    version "9.0.0-rc.1.24431.7,69f9f39d-731a-44af-b2bc-16e2032e68f2,ff83940c685cf51cf19a58e3a3fd0fd4"
    sha256 "055da9bdf7ddd22809259f36a35330045af786c8791d9cc7fb44640ae6c89f3f"
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
