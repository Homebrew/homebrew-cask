cask "magicquit" do
  version "1.4"
  sha256 "2deebd8efc69f06ae51cbc17eecfa15310a8a6a46a800645b285d2be360fd922"

  url "https://magicquit.com/apps/MagicQuit_#{version}.dmg"
  name "MagicQuit"
  desc "Efficiency tool for automatically closing apps when they are not in use"
  homepage "https://magicquit.com/"

  livecheck do
    url :homepage
    regex(/href=.*?MagicQuit[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :ventura"

  app "MagicQuit.app"

  # No zap stanza required
end
