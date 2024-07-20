cask "monofocus" do
  version "1.0.beta36"
  sha256 "17a885fcba482c23e26539275f8bb75812d00675ac26e78879848bded435f69e"

  url "https://updates.monofocus.app/MonoFocus.#{version}.dmg"
  name "MonoFocus"
  desc "Keep all tasks from your todo apps on your menu bar"
  homepage "https://monofocus.app/"

  livecheck do
    url "https://sparkle.monofocus.app/feeds/beta"
    strategy :sparkle do |item|
      item.short_version&.split&.first
    end
  end

  depends_on macos: ">= :catalina"

  app "MonoFocus.app"

  # No zap stanza required
end
