cask "dotnet" do
  version "5.0.5,0e2acfdc-5dad-48a8-935d-6095a0ae2217:3ffa41859dbb1ca40a7e1ff704651178"
  sha256 "f4f3b02899e48b7cb0f1ed8b99f38db630f2e957d47b96de1ee76444b9201dae"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  name ".Net Core Runtime"
  homepage "https://www.microsoft.com/net/core#macos"

  livecheck do
    url "https://dotnet.microsoft.com/download/dotnet-core"
    strategy :page_match
    regex(%r{href=.*?/dotnet-runtime-(\d+(?:\.\d+)*)-osx-x64\.pkg}i)
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
