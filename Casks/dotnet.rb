cask "dotnet" do
  version "3.1.7,182b16ca-1334-40af-a1ca-8e4a9cb07c63:5368671138c576ad48c6e7715e929203"
  sha256 "df69209cc0171890e40920b08de4737f114f5213c98f438f919090360b33a606"

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
