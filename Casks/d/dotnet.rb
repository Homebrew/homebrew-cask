cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.2,016550c2-bc46-43e1-9a9b-31ddb92608ed,7f2a45a4560de9ce447a681162e2e753"
    sha256 "2214d85be8bd1d820933c6b342f7c9b723a09961b0f0c2cf999cb8642f3efdb5"
  end
  on_intel do
    version "9.0.2,8639e61e-f1da-4e5b-a3d1-f1a92f726b3d,4a1f32a0db1e3858dee4f2f3823941e3"
    sha256 "33001cd7296a955c59dfa9d1635861c316443e60e76e9d99808f25f88fee5f63"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]#{arch}\.pkg}i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        release.dig("runtime", "files")&.map do |file|
          file["url"]&.scan(regex)&.map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
        end
      end&.flatten
    end
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "dotnet-sdk@preview",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
