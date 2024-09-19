cask "bluej" do
  arch arm: "aarch64", intel: "x64"

  version "5.4.1"
  sha256 arm:   "6f872911314bae55dd0a1a9251b4adcd4b45a1b98db80e820dca7f086823048c",
         intel: "3de98acc9862578e9ad892237ef42714546ec661b29f8a6dc8a5b25ed01163d6"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{arch}-#{version.no_dots}.dmg"
  name "BlueJ"
  desc "Java Development Environment designed for beginners"
  homepage "https://www.bluej.org/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "BlueJ.app"

  zap trash: "~/Library/Preferences/org.bluej"
end
