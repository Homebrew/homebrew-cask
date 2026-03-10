cask "dotnet-sdk@9" do
  arch arm: "arm64", intel: "x64"

  version "9.0.312"
  sha256 arm:   "96de3de59f06ebdad748a97930bbf7d0b7a4e17a74845bd2b1244b2c8df9250e",
         intel: "ba17105c8deb3a96394ac9999c687b0e0d0fd4fdb7f2afd6f9befefdd9eee65b"

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
  depends_on macos: ">= :monterey"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.dotnet.*#{version.major_minor}*#{arch}"

  # No zap stanza required
end
