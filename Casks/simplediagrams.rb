cask "simplediagrams" do
  version "4.0.28"
  sha256 "07ec3148f476a7b399bb000475c0339a851ea0e9c430159a8ea3371793d2f99a"

  url "https://www.simplediagrams.com/download/simplediagrams_installer_#{version.dots_to_underscores}.dmg"
  name "SimpleDiagrams"
  desc "Diagramming app"
  homepage "https://www.simplediagrams.com/"

  livecheck do
    url "https://www.simplediagrams.com/downloads"
    regex(/simplediagrams[._-]installer[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  app "SimpleDiagrams#{version.major}.app"
end
