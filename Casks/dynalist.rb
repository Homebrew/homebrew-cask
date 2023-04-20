cask "dynalist" do
  version "1.0.6"
  sha256 :no_check

  url "https://dynalist.io/standalone/download?file=Dynalist.dmg"
  name "Dynalist"
  desc "Outlining app for your work"
  homepage "https://dynalist.io/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Dynalist.app"
end
