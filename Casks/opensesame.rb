cask "opensesame" do
  arch = Hardware::CPU.intel? ? "x64" : "arm"

  version "3.3.10"

  url "https://github.com/open-cogsci/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-#{arch}-1.dmg",
      verified: "github.com/open-cogsci/OpenSesame/"
  if Hardware::CPU.intel?
    sha256 "ec1b624224608cc32ae796c68fa596ad6e69bd1b921ccc2b8c9b0da962212bdf"
  else
    sha256 "562476872c9dc8276b8637cc7fc8f8c21edbccec71cbf54a437eb8aa34cdf2ea"
  end

  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    regex(%r{^release[/._-]v?(\d+(?:\.\d+)+)$}i)
  end

  app "OpenSesame.app"
end
