cask "dotnet" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.0,03e62824-4061-45dc-8777-93e82205148d:81489074c065675bd713a9cbeb995bef"
    sha256 "fedbddb71e18d68279433e22326220225b3ee45209966fce818ac34349eefef4"
  else
    version "6.0.0,1bc784af-565c-42d5-8db2-9988c8d2b65f:644cea0fe2f712ad297b6eb49147f446"
    sha256 "dab12623b00707a8e2c5e29438de7a9e738880111d59a5be215fda4a427a9d59"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :page_match do |page|
      page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(\d+(?:\.\d+)+)-osx-#{arch}\.pkg}i).map do |match|
        "#{match[2]},#{match[0]}:#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ]
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.before_comma}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
