cask "stellarium" do
  on_big_sur :or_older do
    version "26.3"
    sha256 "f6d08ed9bc7c7272f237b78dd91eb299aac4ed9ef9c4b25a5e89f65eef2495e0"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_monterey :or_newer do
    version "26.3"
    sha256 "919579d2e5537089796e7fb925d8f2d07926dae657a147b60cb756cb391aba8b"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt6-macOS.zip"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_macos do
    app "Stellarium.app"

    uninstall quit: "org.stellarium.Stellarium"

    zap trash: [
      "~/Library/Application Support/Stellarium",
      "~/Library/Preferences/Stellarium",
    ]
  end
  on_linux do
    version "26.3"
    sha256 "c1297da651217b2566d00f934d300ce9c666e3ee94a6bcb26832cf1a42641e94"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt6-x86_64.AppImage"

    livecheck do
      url :url
      strategy :github_latest
    end

    depends_on arch: :x86_64

    app_image "Stellarium-#{version}-qt6-x86_64.AppImage", target: "Stellarium.AppImage"

    zap trash: "~/.stellarium"
  end

  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"
end
