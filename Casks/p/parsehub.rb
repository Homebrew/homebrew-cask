cask "parsehub" do
  version "54.0.1,5418.4.24"
  sha256 :no_check

  url "https://www.parsehub.com/static/client/parsehub.dmg"
  name "ParseHub"
  desc "Web scraping tool"
  homepage "https://www.parsehub.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ParseHub.app"
end
