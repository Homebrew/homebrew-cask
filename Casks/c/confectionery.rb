cask "confectionery" do
  version "2.4,1"
  sha256 :no_check

  url "https://confectioneryapp.com/download"
  name "Confectionery"
  desc "Website screenshot tool"
  homepage "https://confectioneryapp.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Confectionery.app"

  zap trash: [
    "~/Library/Application Scripts/com.vadimdemedes.Confectionery",
    "~/Library/Application Support/Confectionery",
    "~/Library/Containers/com.vadimdemedes.Confectionery",
    "~/Library/Preferences/com.vadimdemedes.Confectionery.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Confectionery.savedState",
  ]
end
