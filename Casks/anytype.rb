cask "anytype" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "22e2b7ec23e1c187819a65227c02ea474b4b481b306eb33324c14333bf7d938c",
         intel: "6636e74b602abdad87c6e8f45967288031a881a630a2b194ca85523ce7eeeda9"

  url "https://at9412003.fra1.cdn.digitaloceanspaces.com/Anytype-#{version}-mac-#{arch}.dmg",
      verified: "at9412003.fra1.cdn.digitaloceanspaces.com/"
  name "Anytype"
  desc "Local-first and end-to-end encrypted notes app"
  homepage "https://anytype.io/"

  livecheck do
    url "https://at9412003.fra1.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Anytype.app"

  zap trash: [
    "~/Library/Application Support/anytype2",
    "~/Library/Logs/anytype2",
    "~/Library/Preferences/com.anytype.anytype2.plist",
    "~/Library/Saved Application State/com.anytype.anytype2.savedState",
  ]
end
