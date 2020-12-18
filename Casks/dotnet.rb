cask "dotnet" do
  version "3.1.9,175aea5a-1b4a-4faa-b29d-ff72fa8c16bc:fcef8fc0139672f19ec8b9913824b6bb"
  sha256 "9169251b1a55a0f812efe426b9a456002d9288962712b266ef6195fe9ea6c942"

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
