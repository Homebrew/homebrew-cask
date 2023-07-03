cask "quickhash" do
  version "3.3.1,2258"
  sha256 "9540ade4b01e99d6e0e1cb42e7ef169c75a334ab4bceebe4befed8f400cfe65f"

  url "https://www.quickhash-gui.org/download/quickhash-gui-v#{version.csv.first.dots_to_hyphens}-apple-osx/?wpdmdl=#{version.csv.second}"
  name "Quickhash"
  desc "Data hashing tool"
  homepage "https://www.quickhash-gui.org/"

  livecheck do
    url "https://www.quickhash-gui.org/downloads/"
    regex(%r{/quickhash[._-](?:gui[._-])?v?(\d+(?:-\d+)+)[._-]apple[._-]osx/\?wpdmdl=(\d+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("-", ".")},#{match[1]}" }
    end
  end

  app "Quickhash-GUI.app"
end
