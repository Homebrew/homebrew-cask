cask "komodo-ide" do
  version "12.0.1,91869"
  sha256 "44690ebf9395899cffab48b1c8ca7adb5abbb1cb9a47672e3303d79ba5392eb8"

  url "https://downloads.activestate.com/Komodo/releases/#{version.csv.first}/Komodo-IDE-#{version.csv.first}-#{version.csv.second}-macosx-x86_64.dmg"
  name "Komodo IDE"
  desc "One IDE for all your languages"
  homepage "https://www.activestate.com/komodo-ide/"

  app "Komodo IDE #{version.major}.app"

  caveats do
    discontinued
  end
end
