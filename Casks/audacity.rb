cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.2.1"
  sha256 arm:   "0afba6f74f152bc50ac271c92a02b94196a57248ed7219e796fede1f8b1f91e1",
         intel: "b284dc858f8fdd770946c6894217ed16337e1fd2cd3472d6d87ea3bbd5ba3eaa"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
