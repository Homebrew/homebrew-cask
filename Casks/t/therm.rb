cask "therm" do
  version "0.6.3"
  sha256 "fc93a8e275449ddb9da76e5da27425dfddf0be3727ba14decebe56632f7eef3a"

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
