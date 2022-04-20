cask "bdash" do
  version "1.14.7"
  sha256 "4166f82c687f287812181db460728d1a310db6dcd5c14dc84f3d08383ef4fd06"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
