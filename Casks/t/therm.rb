cask "therm" do
  version "0.6.0"
  sha256 "5de0c6bedd9621b72918a7975442f7db3632fca474303f919e65ae49be673bc4"

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
