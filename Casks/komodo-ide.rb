cask "komodo-ide" do
  version "12.0.1,91869"
  sha256 "44690ebf9395899cffab48b1c8ca7adb5abbb1cb9a47672e3303d79ba5392eb8"

  url "https://downloads.activestate.com/Komodo/releases/#{version.csv.first}/Komodo-IDE-#{version.csv.first}-#{version.csv.second}-macosx-x86_64.dmg"
  name "Komodo IDE"
  desc "One IDE for all your languages"
  homepage "https://www.activestate.com/komodo-ide/"

  livecheck do
    url "https://www.activestate.com/komodo-ide/downloads/ide"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Komodo-IDE-(\d+(?:\.\d+)*)-(\d+)-macosx-x86_64\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Komodo IDE #{version.major}.app"
end
