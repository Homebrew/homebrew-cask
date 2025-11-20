cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.7.2"
  sha256 arm:   "84ef3ca3fc00461d481b369399479d4e0812d277ee00491f64909993b0ef6f4d",
         intel: "d89ab6288fb953598d6ad05a0c0666bb9632b3b68d7d191bebb4211f66ec2f99"

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
