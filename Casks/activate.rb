cask "activate" do
  version "1.1.2"
  sha256 :no_check

  url "https://github.com/Lakr233/ActivateMac/releases/download/1.1.2/Activate.zip"
  name "Activate"
  desc "Show MS Windows style activation dialog on my screen"
  homepage "https://github.com/Lakr233/ActivateMac"

  app "Activate.app"
end
