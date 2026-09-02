cask "dotnet-sdk@9" do
  # Differs from the `dotnet` formula by including additional closed-source components
  arch arm: "arm64", intel: "x64"

  version "9.0.317"
  sha256 arm:   "62b62ede499c2703e075afad4570e4acd1506b6d8b0b927185485a7c7983973a",
         intel: "5dddb66e4ff319e4f0492795bc8794c3b403902eb0edfad6333a2d91579ae307"

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
  depends_on macos: :monterey

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.dotnet.*#{version.major_minor}*#{arch}"

  # No zap stanza required
end
