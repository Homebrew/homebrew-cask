cask "fastscripts" do
  version "2.8.3,985"
  sha256 "0e942f689e2965613c8702abe214496084c5e94147bd87c9963fb392161e9d32"

  url "https://redsweater.com/fastscripts/FastScripts#{version.before_comma}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast2.php"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "FastScripts.app"
end
