cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.4.3"
  sha256 arm:   "54f76378646ad3bbd57e99b5b591b5f90a5ef446588b682186310da78d7ee1d8",
         intel: "0f5233c760c74998436d717284dfe2cae966df75ae92a307ec461cecb5853be2"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
