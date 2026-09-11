cask "dotnet-runtime@preview" do
  arch arm: "arm64", intel: "x64"

  version "11.0.0-rc.1.26425.128"
  sha256 arm:   "f61e19c84b7bf550fee1289bb24867a136ab9af670cb97f1acd005cbfee5ca2e",
         intel: "6acd4e3aed434a0102756c2b6bf6e53b61db9b44d10a6a868031dbe691836e3f"

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
  ]
  depends_on macos: :sonoma

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
