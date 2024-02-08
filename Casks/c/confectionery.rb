cask "confectionery" do
  version "1.2.1"
  sha256 :no_check

  url "https://confectioneryapp.com/download"
  name "Confectionery"
  desc "Website screenshot tool"
  homepage "https://confectioneryapp.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Confectionery.app"

  zap trash: [
    "~/Library/Application Support/Confectionery",
    "~/Library/Preferences/com.vadimdemedes.Confectionery.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Confectionery.savedState",
  ]
end
