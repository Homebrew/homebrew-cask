cask "doxygen-app" do
  arch arm: "arm", intel: "intel"

  version "1.17.0"
  sha256 arm:   "238cc26fd8fbc041af8d952c56a0f311775e98ee7352ae86ce65f45582feefac",
         intel: "f79b108a90355c77a9e23efe9c57c58a94cf964f97319c437956f49e77af79c8"

  url "https://www.doxygen.nl/files/Doxygen-#{version}-#{arch}.dmg"
  name "Doxygen"
  desc "Generate documentation from source code"
  homepage "https://www.doxygen.nl/"

  livecheck do
    url "https://www.doxygen.nl/download.html"
    regex(/href=.*?Doxygen[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :sequoia

  app "Doxygen.app"

  zap trash: [
    "~/Library/Preferences/org.doxygen.Doxywizard.plist",
    "~/Library/Preferences/org.doxygen.plist",
    "~/Library/Saved Application State/org.doxygen.savedState",
  ]
end
