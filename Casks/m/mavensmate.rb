cask "mavensmate" do
  version "0.0.11"
  sha256 "a16344436cebb550f57d3800bf47f3176e2135701462dcd2b41c7f02192d5fd7"

  url "https://github.com/joeferraro/MavensMate-Desktop/releases/download/v#{version}/MavensMate-#{version}.dmg"
  name "MavensMate"
  desc "Packaged desktop app for MavensMate server"
  homepage "https://github.com/joeferraro/MavensMate-Desktop"

  deprecate! date: "2023-12-17", because: :discontinued

  app "MavensMate.app"
end
