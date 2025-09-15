cask "stellarium" do
  on_catalina :or_older do
    version "25.2"
    sha256 "f6d08ed9bc7c7272f237b78dd91eb299aac4ed9ef9c4b25a5e89f65eef2495e0"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_big_sur :or_newer do
    version "25.2"
    sha256 "9d84b159462c77d3dea5c41010c0d002c485201c48ee8005809cbcfa260f9d52"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt6-macOS.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  app "Stellarium.app"

  zap trash: [
    "~/Library/Application Support/Stellarium",
    "~/Library/Preferences/Stellarium",
  ]
end
