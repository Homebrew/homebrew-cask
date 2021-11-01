cask "axe-edit-iii" do
  version "1.10.02"
  sha256 "002d7af858fc6a015cfd6c789dcf973090b14f6da4c946cdaeb55464b05de69e"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  name "Axe-Edit III"
  desc "Editor software for the AXE-FX III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  livecheck do
    url "https://www.fractalaudio.com/axe-fx-iii-edit/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Axe-Edit-III-OSX-v(\d+(?:p\d+)*)\.dmg}i, 1]
      v.tr("p", ".")
    end
  end

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end
