cask "simplediagrams" do
  version "4.0.28"
  sha256 "07ec3148f476a7b399bb000475c0339a851ea0e9c430159a8ea3371793d2f99a"

  url "https://www.simplediagrams.com/download/simplediagrams_installer_#{version.dots_to_underscores}.dmg"
  appcast "https://www.simplediagrams.com/downloads",
          must_contain: version.dots_to_underscores
  name "SimpleDiagrams"
  homepage "https://www.simplediagrams.com/"

  app "SimpleDiagrams#{version.major}.app"
end
