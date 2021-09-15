cask "quickhash" do
  version "3.3.0,2190"
  sha256 "fa80950bc63c50cae18f820636f32e592eed9322928cdf5936c3f4bdec866dbb"

  url "https://www.quickhash-gui.org/download/quickhash-gui-v#{version.before_comma.dots_to_hyphens}-apple-osx/?wpdmdl=#{version.after_comma}"
  name "Quickhash"
  desc "Data hashing tool"
  homepage "https://www.quickhash-gui.org/"

  livecheck do
    url "https://www.quickhash-gui.org/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{/quickhash[._-](?:gui[._-])?v?(\d+(?:-\d+)+)[._-]apple[._-]osx/\?wpdmdl=(\d+)}i)
      "#{match[1].tr("-", ".")},#{match[2]}"
    end
  end

  app "Quickhash-GUI.app"
end
