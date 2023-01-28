cask "lotus" do
  version "1.3.2"
  sha256 :no_check

  url "https://app-updates.vadimdemedes.com/lotus/download/osx",
      verified: "app-updates.vadimdemedes.com/lotus/download/osx"
  name "Lotus"
  desc "Keep up with GitHub notifications"
  homepage "https://getlotus.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Lotus.app"
end
