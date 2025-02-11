cask "dotnet-sdk@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.200,b5dfd4eb-19f4-4ba5-9a0c-50af354aa434,3f307be41112d4a8de659535e8badff2"
    sha256 "4c78aa9b9762db73f2076d7464b7d4865c29ef8ff9e1fdf90379ebed66458c2e"
  end
  on_intel do
    version "9.0.200,24e6d730-e336-4ba9-a248-4519bdd38251,e35a7403d4b03ffa8ced47dff6b3111f"
    sha256 "ed1231de3171af78cfc26fa431b4629004d118e74ddac688d77de9455e09793e"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-sdk-#{version.csv.first}-osx-#{arch}.pkg"
  name ".NET SDK"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://builds.dotnet.microsoft.com/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-sdk[._-]v?(.+)[._-]osx[._-]#{arch}\.pkg}i)
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
    "dotnet-sdk",
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
