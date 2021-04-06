cask "fastscripts" do
  version "2.8.3"
  sha256 "0e942f689e2965613c8702abe214496084c5e94147bd87c9963fb392161e9d32"

  url "https://red-sweater.com/fastscripts/FastScripts#{version}.zip"
  appcast "https://red-sweater.com/fastscripts/appcast2.php"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://red-sweater.com/fastscripts/"

  depends_on macos: ">= :sierra"

  app "FastScripts.app"
end
