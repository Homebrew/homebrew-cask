cask "dotnet-runtime@preview" do
  arch arm: "arm64", intel: "x64"

  version "9.0.7"
  sha256 arm:   "3bffe300f3cf201068d58b6f8930a0ace13abe74c2cd8d5791e7200464d60f9e",
         intel: "c1df4527da82d6e22ac767ac8153dce4985b55faba665afa119a15426c0abde1"

  url "https://builds.dotnet.microsoft.com/dotnet/Runtime/#{version}/dotnet-runtime-#{version}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release.dig("runtime", "version")
      end
    end
  end

  conflicts_with cask: [
    "dotnet-runtime",
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
