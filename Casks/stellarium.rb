cask "stellarium" do
  version "23.1"
  sha256 "57336cf19e0e811fe1d0fcf361fa71aef8fa73bffd6c4e37f052b21a129a8ecf"

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
