cask "ankama-launcher" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://download.ankama.com/launcher/full/mac/"
  end

  name "Ankama Launcher"
  desc "Discover the portal you can use to download all of Ankama's PC games"
  homepage "https://www.ankama.com/en/launcher"

  depends_on macos: ">= :catalina"

  app "Ankama Launcher.app"
end
