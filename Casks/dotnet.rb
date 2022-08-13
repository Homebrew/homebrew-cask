cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  if Hardware::CPU.intel?
    version "6.0.7,3da50ef8-7b22-4f08-95e9-3641416fdc08,ee91bcdbbbb117803e315f673c9d19f1"
    sha256 "9aba5aca71ada681a77a9058a5d5c2fdfed7d6a197ba416c88e8093906abbdeb"
  else
    version "6.0.8,9beccd15-f764-41af-babc-e88839269b89,fe9ee487d0d52feb9a9213da780f19d8"
    sha256 "48077415a07f66e809230fed5b9b39bd0118cff1751c68ad270779b0786c1d1a"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime-v?(\d+(?:\.\d+)+)-osx-#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "dotnet-sdk",
    "homebrew/cask-versions/dotnet-preview",
    "homebrew/cask-versions/dotnet-sdk-preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
