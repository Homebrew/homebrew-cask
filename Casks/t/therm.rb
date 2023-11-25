cask "therm" do
  version "0.5.0"
  sha256 "82e295eace2eaa8d7f1b375e054f1395ad1848343d47540a595c2a8fc15a32bb"

  url "https://github.com/trufae/Therm/releases/download/#{version}/Therm-#{version}.zip"
  name "Therm"
  desc "Fork of iTerm2 that aims to have good defaults and minimal features"
  homepage "https://github.com/trufae/Therm"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Therm.app"
end
