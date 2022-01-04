cask "captain" do
  version "9.0.0"
  sha256 :no_check

  url "https://getcaptain.co/downloads/Captain.dmg"
  name "Captain"
  desc "Manage Docker containers from the menu bar"
  homepage "https://getcaptain.co/"

  livecheck do
    url :homepage
    regex(/Download\sCaptain\sv?(\d+(?:\.\d+)+)[\s<]/i)
  end

  app "Captain.app"
end
