cask "jiggler" do
  version "1.9"
  sha256 :no_check

  url "http://downloads.sticksoftware.com/Jiggler.dmg"
  name "Jiggler"
  desc "Keep your computer awake"
  homepage "http://www.sticksoftware.com/software/Jiggler.html"

  livecheck do
    url :homepage
    regex(/<h1>.+(\d+(?:\.\d+)+)\s/i)
  end

  depends_on macos: ">= :catalina"

  app "Jiggler.app"

  zap trash: "~/Library/Preferences/com.stick.app.jiggler.plist"
end
