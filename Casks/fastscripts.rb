cask "fastscripts" do
  version "3.0.2,1524"
  sha256 "fed63c476458b6a12e202ce480016912fdd55dac575f979df684d69c1bfc13a8"

  url "https://redsweater.com/fastscripts/FastScripts#{version.csv.first}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast#{version.major}.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "FastScripts.app"
end
