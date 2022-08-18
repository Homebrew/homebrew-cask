cask "gephi" do
  version "0.9.7"
  sha256 "82bd1206b777011cf15bd4ff4b1ade7e4ffa09d1262c1c890b238c23626e4861"

  url "https://github.com/gephi/gephi/releases/download/v#{version}/gephi-#{version}-macos-x64.dmg",
      verified: "github.com/gephi/gephi/"
  name "Gephi"
  desc "Open-source platform for visualizing and manipulating large graphs"
  homepage "https://gephi.org/"

  app "Gephi.app"
end
