cask "hype" do
  version "4.1.6,734"
  sha256 "2e2895a5dd6627285a2bc8c6283ae03eb162d30944ce6058f392b372f5047a79"

  url "https://tumult.com/hype/download/Hype-#{version.after_comma}.dmg"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  livecheck do
    url "https://tumult.com/hype/appcast_hype#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
