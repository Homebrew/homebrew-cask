cask "dotnet-runtime@preview" do
  arch arm: "arm64", intel: "x64"

  version "10.0.1"
  sha256 arm:   "dd85ccee70dd3c1464e1b89ef3cd25ee277295eaa635c0de9c974697b06fe357",
         intel: "9f845b22c3be0396d79e6fa0fc97f1d4eb7a52cf99f7c690a7e23969480ca098"

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
  depends_on macos: ">= :ventura"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
