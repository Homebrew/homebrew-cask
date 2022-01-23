cask "kindavim" do
  version "1b23,0.9.23"
  sha256 :no_check

  url "https://kindavim.app/releases/kindaVim.zip"
  name "kindaVim"
  desc "Use vim anywhere"
  homepage "https://kindavim.app/"

  livecheck do
    url "https://kindavim.app/releases/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "kindaVim.app"
end
