cask "simplediagrams" do
  version "4.0.28"
  sha256 "07ec3148f476a7b399bb000475c0339a851ea0e9c430159a8ea3371793d2f99a"

  url "https://www.simplediagrams.com/download/simplediagrams_installer_#{version.dots_to_underscores}.dmg"
  name "SimpleDiagrams"
  homepage "https://www.simplediagrams.com/"

  livecheck do
    url "https://www.simplediagrams.com/downloads"
    strategy :page_match do |page|
      v = page[%r{href=.*?/simplediagrams_installer_(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  app "SimpleDiagrams#{version.major}.app"
end
