cask "atlauncher" do
  version "3.4.3.1"
  sha256 :no_check

  url "https://www.atlauncher.com/download/zip"
  name "ATLauncher"
  homepage "https://www.atlauncher.com/"

  livecheck do
    url "https://atlauncher.com/downloads"
    strategy :page_match
    regex(/{\s*active:\s*['"](\d+(?:\.\d+)*)['"]\s*}/i)
  end

  app "ATLauncher.app"
end
