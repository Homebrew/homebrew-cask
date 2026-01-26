cask "jiggler" do
  version "1.10"
  sha256 :no_check

  url "https://downloads.sticksoftware.com/Jiggler.dmg"
  name "Jiggler"
  desc "Keep your computer awake"
  homepage "https://www.sticksoftware.com/software/Jiggler.html"

  livecheck do
    url :homepage
    regex(/<h1>.+(\d+(?:\.\d+)+)\s/i)
  end

  app "Jiggler.app"

  zap trash: "~/Library/Preferences/com.stick.app.jiggler.plist"
end
