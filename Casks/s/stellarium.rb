cask "stellarium" do
  on_big_sur :or_older do
    version "26.2"
    sha256 "f6d08ed9bc7c7272f237b78dd91eb299aac4ed9ef9c4b25a5e89f65eef2495e0"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_monterey :or_newer do
    version "26.2"
    sha256 "960cdf1526a2989d213bc2c75f4b5747fd77f5a580345286a4913825ad192978"

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

  depends_on :macos

  app "Stellarium.app"

  zap trash: [
    "~/Library/Application Support/Stellarium",
    "~/Library/Preferences/Stellarium",
  ]
end
