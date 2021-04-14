cask "fm3-edit" do
  version "1.03.03"
  sha256 "19331702cb72d1068a8759fea2688679102922cdbe09dca28693965b362cfe4a"

  url "https://www.fractalaudio.com/downloads/FM3-Edit/FM3-Edit-OSX-v#{version.tr(".", "p")}.dmg"
  name "FM3 Edit"
  desc "Editor for the FM3 Amp Modeler/FX Processor"
  homepage "https://www.fractalaudio.com/fm3-edit/"

  livecheck do
    url "https://www.fractalaudio.com/fm3-edit/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/FM3-Edit-OSX-v(\d+(?:p\d+)*)\.dmg}i, 1]
      v.tr("p", ".")
    end
  end

  app "FM3-Edit.app"

  zap trash: "~/Library/Application Support/Fractal Audio/FM3-Edit"
end
