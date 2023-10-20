cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.1"
  sha256 arm:   "cfdaf17794b8b794b919e22edb2b6e0f6f9d1ead153592d937a98c92f476c617",
         intel: "24d4acac948fa333de3385e59e8930e76df55fae55e31e6f1ab4037a4e68bac6"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    # To not grab f-droid and pre-releases
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
