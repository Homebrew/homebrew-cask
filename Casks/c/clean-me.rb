cask "clean-me" do
  on_mojave :or_older do
    version "1.4.1"
    sha256 "a074546909de68b0b378b58f6804a118f40a03077083a5a61a19c588f0841648"
  end
  on_catalina :or_newer do
    version "1.4.2"
    sha256 "f58124740e8d9cbf8b4f45ee9a3e30a2aced109381fc34583d1c28d49d54dfe5"
  end

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  name "Clean-me"
  desc "System cleaner for logs, caches and more"
  homepage "https://github.com/Kevin-De-Koninck/Clean-Me"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :sierra"

  app "Clean Me.app"

  # No zap stanza required
end
