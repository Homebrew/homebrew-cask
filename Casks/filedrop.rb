cask "filedrop" do
  version "1.1.5"
  sha256 :no_check

  url "https://commondatastorage.googleapis.com/filedropme/Filedrop.dmg",
      verified: "commondatastorage.googleapis.com/filedropme/"
  name "Filedrop"
  desc "File sharing software"
  homepage "http://www.filedropme.com/"

  app "Filedrop.app"
end
