cask "dotnet-sdk@8" do
  # Differs from the `dotnet` formula by including additional closed-source components
  arch arm: "arm64", intel: "x64"

  version "8.0.426"
  sha256 arm:   "ccd3f8c218d573c8564b3184f748990e1e86a78efc8bd2b59733b12fe8cb213b",
         intel: "72941a3a9a235eb4d66c4bb631a8082e50888e830135931e7bcd43c025d57a75"

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
  depends_on :macos

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.dotnet.*#{version.major_minor}*#{arch}"

  # No zap stanza required
end
