cask "spotube" do
  version "2.7.1"
  sha256 "53b3d8fc68ef044b63718dd862e360568fb6ee245a00b139acd65a0b74694c7d"

  url "https://github.com/KRTirtho/spotube/releases/download/v#{version}/Spotube-macos-x86_64.dmg"
  name "spotube"
  desc "Flutter based lightweight Spotify client"
  homepage "https://spotube.netlify.app/"

  app "spotube.app"
end
