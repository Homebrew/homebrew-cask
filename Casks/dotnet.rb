cask "dotnet" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "6.0.10,1cf60908-695c-4d98-a502-47ba21c9f9bf,8163b98d2c2a4f725af448adbe1047a7"
    sha256 "ed095f2c05ecbda25ca9a5d45ae22aac1961940b8ef50ca1d11fe7d9cc9d77a1"
  end
  on_arm do
    version "6.0.10,6afedb21-384c-4110-9856-189c169b231f,843a9a27982eaf00b0bb8ed5a9626401"
    sha256 "a6b011bb043c2855192c1e6c5dbbbd0c04b7ecdacf043eae5a3f592e6cf45c55"
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
