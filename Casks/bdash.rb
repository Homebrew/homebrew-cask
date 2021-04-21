cask "bdash" do
  version "1.9.3"
  sha256 "777d0ec55fcc4a4f5b4f405648bfda8243bbedfe3fb2013d8636e28e427661f3"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  app "Bdash.app"
end
