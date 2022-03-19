cask "posterazor" do
  version "1.5"
  sha256 "dbecf2dc00fe2bf106df2e9fd9bc66014015989771db6c369a86d755f516df49"

  url "https://downloads.sourceforge.net/posterazor/Binary%20Releases/#{version}/PosteRazor-#{version}-OSX.dmg",
      verified: "downloads.sourceforge.net/posterazor/"
  name "PosteRazor"
  desc "Raster image splitter"
  homepage "https://posterazor.sourceforge.io/"

  livecheck do
    url "https://posterazor.sourceforge.io/index.php?page=download&lang=english"
    regex(/PosteRazor[._-]?(\d+(?:\.\d+)*)[._-]?OSX\.dmg/i)
  end

  app "PosteRazor.app"
end
