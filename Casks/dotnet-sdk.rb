cask "dotnet-sdk" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "6.0.100,14a45451-4cc9-48e1-af69-0aff75891d09:ff6e83986a2a9a535015fb3104a90a1b"
    sha256 "9203560506408d8f88774358b03cdcfcfa0495682fde6034b24f7ccaeddce2ef"
  else
    version "6.0.100,ed60d37e-7842-4fc2-8250-2bd66073d79e:725d486e04d27e45d2b41c687dc35f49"
    sha256 "df96e334b5ac10e9e4abccf81376f52da1ed0fb0ad3822709e3c27b8c0bfa01a"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    strategy :page_match do |page|
      page.scan(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk-v?(\d+(?:\.\d+)+)-osx-#{arch}\.pkg}i).map do |match|
        "#{match[2]},#{match[0]}:#{match[1]}"
      end
    end
  end

  conflicts_with cask: [
    "dotnet",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ]
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.before_comma}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
    "com.microsoft.dotnet.*",
    "com.microsoft.netstandard.pack.targeting.*",
  ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
