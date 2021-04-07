cask "atlauncher" do
  version "3.4.3.1"
  sha256 :no_check

  url "https://www.atlauncher.com/download/zip"
  name "ATLauncher"
  homepage "https://www.atlauncher.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "ATLauncher.app"
end
