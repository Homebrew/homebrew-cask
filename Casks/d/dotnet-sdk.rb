cask "dotnet-sdk" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.102,96489126-b9ba-414a-a2d0-d8c5b61a22be,fe047e117e9cc43738ba2222f4769da2"
    sha256 "f128839d529d2908a4fa2068d06fab33bb6880790ed08966cad6ce844faf706a"
  end
  on_intel do
    version "9.0.102,2bda19b1-6389-4520-8e5e-363172398741,662eee446961503151bb78c29997933e"
    sha256 "775a7cca2e7178db25cb1fd9d0cdd19415fcb19c4c184535169ffe3aa5923b0f"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  # This identifies releases with the same major/minor version as the current
  # cask version. New major/minor releases occur annually in November and the
  # check will automatically update its behavior when the cask is updated.
  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]#{arch}\.pkg}i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        release.dig("sdk", "files")&.map do |file|
          file["url"]&.scan(regex)&.map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
        end
      end&.flatten
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk@preview",
    "dotnet@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
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
