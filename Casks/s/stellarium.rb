cask "stellarium" do
  version "23.3"
  sha256 "96fb8c70b0aaa6ff5c1a863d906151df42a040eab81f151e8fd2b08fd822dabd"

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor}/Stellarium-#{version}-qt6-macOS.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
