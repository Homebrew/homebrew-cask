cask "stellarium" do
  on_sierra :or_older do
    version "0.22.2"
    sha256 "5e8c2ee315f8c00a393e7bd22461f9b48355538cec39e1bb771e92a5795bcfb4"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "25.1"
    sha256 "09d5cf56397a5e334ead321b93ca63e23e67d152f9d52d96fcb373ac212817c8"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_mojave do
    version "25.1"
    sha256 "09d5cf56397a5e334ead321b93ca63e23e67d152f9d52d96fcb373ac212817c8"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_catalina do
    version "25.1"
    sha256 "09d5cf56397a5e334ead321b93ca63e23e67d152f9d52d96fcb373ac212817c8"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt5-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_big_sur :or_newer do
    version "25.1"
    sha256 "8e7a811dbc2f94315390606d64e58aa443f67286cd2e67d644c730b8d580642e"

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

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: [
    "~/Library/Application Support/Stellarium",
    "~/Library/Preferences/Stellarium",
  ]
end
