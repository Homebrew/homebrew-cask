cask "dotnet" do
  version "5.0.3,60a8becd-ff61-4e17-8329-4d85f9d1e3b9:06ef79dad25a85905afbb3965f613bad"
  sha256 "5931a842bca76b5c25f106034b4037ea08450c9d972d13473874f7dd7d7918b1"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet-core"
  name ".Net Core Runtime"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet-sdk",
    "dotnet-preview",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
