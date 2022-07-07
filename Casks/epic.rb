cask "epic" do
  arch = Hardware::CPU.intel? ? "" : "m1"

  version "103.0.5060.53"

  if Hardware::CPU.intel?
    sha256 "d3e352ae9cd7aa342ff8d9b89f87be9b94e7887c38ac5fb9b92e9e2089a721ba"
  else
    sha256 "445d5344376c5f586350fb53ed04f7535dd48c48029e0f4a18a5b9be45995b8f"
  end

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
