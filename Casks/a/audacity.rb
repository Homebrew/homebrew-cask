cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.1"
  sha256 arm:   "729fcdc7f34e3f8708b725e99a7a0eb4fe913eff09166393b79aaa8f755ce310",
         intel: "f675ab3de71fd57c5a0d885446f681051395f360ae83af381dbfeda44ddf9242"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
