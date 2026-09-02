cask "degr" do
  version "1.3"
  sha256 "bf85de7ef5b5c2d0d809edd516741dbac3b35b4c7513195b3debdf54a45f8cf6"

  url "https://degr.app/downloads/v#{version}/degr-mac.zip"
  name "degr"
  desc "Temperature and clock screensaver"
  homepage "https://degr.app/"

  livecheck do
    url "https://degr.app/version.json"
    strategy :json do |json|
      json["mac"]
    end
  end

  depends_on macos: :ventura

  screen_saver "manual-install/degr.saver"

  zap trash: [
    "~/Library/Application Support/degr",
    "~/Library/Preferences/app.degr.degr.plist",
  ]
end
