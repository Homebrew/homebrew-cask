cask "dotnet@preview" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "9.0.0,a129df43-9d92-421f-9d63-eb9a8218e16a,9533b915759dcbe7cbd2fb0bed4d1ba2"
    sha256 "0dc84cb66121ca4fcb75adfa80bf55730150f6e8f6957e22089872d00b2623f3"
  end
  on_intel do
    version "9.0.0,c36c7ef4-59b3-40e5-ae06-798b485fc007,579afa87e7f72dc6af44bc96aa6c2477"
    sha256 "7dd57f7f7847f5f8359b65c68e63c23b13fb0ab287047e24ee7835ef15856108"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  name ".Net Runtime"
  desc "Developer platform"
  homepage "https://dotnet.microsoft.com/en-us/"

  livecheck do
    url "https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/#{version.major_minor}/releases.json"
    regex(%r{/download/pr/([^/]+)/([^/]+)/dotnet-runtime[._-]v?(.+)[._-]osx[._-]#{arch}\.pkg}i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        release.dig("runtime", "files")&.map do |file|
          file["url"]&.scan(regex)&.map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
        end
      end&.flatten
    end
  end

  conflicts_with cask: [
    "dotnet",
    "dotnet-sdk",
    "dotnet-sdk@preview",
  ], formula: "dotnet"
  depends_on macos: ">= :mojave"

  pkg "dotnet-runtime-#{version.csv.first}-osx-#{arch}.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: "com.microsoft.dotnet.*",
            delete:  "/etc/paths.d/dotnet"

  zap trash: "~/.nuget"
end
