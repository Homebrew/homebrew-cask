cask "epic" do
  arch arm: "m1"

  version "103.0.5060.53"
  sha256 arm:   "445d5344376c5f586350fb53ed04f7535dd48c48029e0f4a18a5b9be45995b8f",
         intel: "d3e352ae9cd7aa342ff8d9b89f87be9b94e7887c38ac5fb9b92e9e2089a721ba"

  url "https://cdn.epicbrowser.com/v100/#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://www.epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank_you.php"
    regex(%r{href=.*?/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Epic.app"
end
