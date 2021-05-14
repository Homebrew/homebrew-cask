cask "dotnet" do
  version "5.0.6,4e2e2c76-626f-4927-8753-55d47ab79e06:24417509d68777cab1ed5f927e86db82"
  sha256 "208eae389ea28d76b6b081f944cecca9ec7f0d59bba6711ade976a8c2bf18994"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :page_match do |page|
      page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(\d+(?:\.\d+)+)-osx-x64\.pkg}i).map do |match|
        "#{match[2]},#{match[0]}:#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ]
  depends_on macos: ">= :high_sierra"

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
