cask "stellarium" do
  on_high_sierra :or_older do
    version "0.22.2"
    sha256 "5e8c2ee315f8c00a393e7bd22461f9b48355538cec39e1bb771e92a5795bcfb4"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "24.3"
    sha256 "6e4fb74715010f213fa4bf55affa1661b572b4b9e1705aa3f882744293350394"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_catalina do
    version "24.3"
    sha256 "6e4fb74715010f213fa4bf55affa1661b572b4b9e1705aa3f882744293350394"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_big_sur :or_newer do
    version "24.3"
    sha256 "52462403d3d5c16613c364b023efbddbb1b036140d60e68f70f67a6c0dc8e519"

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

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: [
    "~/Library/Application Support/Stellarium",
    "~/Library/Preferences/Stellarium",
  ]
end
