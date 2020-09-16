cask "dotnet" do
  version "3.1.8,c7360900-c6b2-403a-b1e8-ca41bad62fda:1c530d962da48b1f8bc7ad857683c354"
  sha256 "f62d640229d41fd22920c4cdc770c8cf47d1c87f70a94a640c9eea0b9d014a4d"

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
