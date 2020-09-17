cask "postbird" do
  version "0.8.4"
  sha256 "d9ac960e0c48fab31b0662c726a3eb373794c14dd49651fa533ca3c1c67c67be"

  url "https://github.com/Paxa/postbird/releases/download/#{version}/Postbird-#{version}.dmg"
  appcast "https://github.com/Paxa/postbird/releases.atom"
  name "Postbird"
  desc "Open-source PostgreSQL GUI client"
  homepage "https://github.com/Paxa/postbird"

  app "Postbird.app"
end
