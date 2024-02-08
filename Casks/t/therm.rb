cask "therm" do
  version "0.6.1"
  sha256 "aaedbfd71f57b5e4f8641ba8e66861fe9692214a164ed117d1b130ecd0bd1818"

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
