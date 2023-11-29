cask "pac-man" do
  version "10.32"
  sha256 :no_check

  url "http://www2.getpacman.gq/files/Pac-Man.zip"
  name "Pac-Man"
  desc "Java-Based Pac-Man Game"
  homepage "https://www.getpacman.gq/"

  app "Pac-Man.app"
  
  zap trash: "~/highscore.txt"
end
