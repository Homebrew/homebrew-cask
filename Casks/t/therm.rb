cask "therm" do
  version "0.6.2"
  sha256 "9b1dc2cdead021351131b5460fdd623e99dac7cb96f9bfdd1fd48c36f5eb3062"

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
