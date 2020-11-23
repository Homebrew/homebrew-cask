cask "metashapepro" do
  version "1.6.5"
  sha256 "8c599474f8182ac37e3b981895210eca5fa9c7d14a543474dbd2703f5a93ea62"

  url "http://download.agisoft.com/metashape-pro_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Professional Edition"
  homepage "https://www.agisoft.com/"

  app "MetashapePro.app"
end
