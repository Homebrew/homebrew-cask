cask "dotnet-sdk@8" do
  # Differs from the `dotnet` formula by including additional closed-source components
  arch arm: "arm64", intel: "x64"

  version "8.0.424"
  sha256 arm:   "611d8fe999a4fad934249a4c114b28bdd1895bba20593f93efa08ae0d3ea8633",
         intel: "1ee3ff12c5fe078ab547a6124581e1ba49c13a05c8c31da2d65223943d717b39"

  url "https://builds.dotnet.microsoft.com/dotnet/Sdk/#{version}/dotnet-sdk-#{version}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        version = release.dig("sdk", "version")
        next unless version&.match(regex)

        version
      end
    end
  end

  depends_on cask: "dotnet-sdk"
  depends_on macos: :big_sur

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.dotnet.*#{version.major_minor}*#{arch}"

  # No zap stanza required
end
