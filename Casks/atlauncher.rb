cask "atlauncher" do
  version "3.4.3.3"
  sha256 :no_check

  url "https://www.atlauncher.com/download/zip"
  name "ATLauncher"
  desc "Minecraft launcher"
  homepage "https://www.atlauncher.com/"

  livecheck do
    url "https://atlauncher.com/downloads"
    strategy :page_match
    regex(/{\s*active:\s*['"](\d+(?:\.\d+)*)['"]\s*}/i)
  end

  app "ATLauncher.app"
end
