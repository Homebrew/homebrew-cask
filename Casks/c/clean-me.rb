cask "clean-me" do
  version "1.4.2"
  sha256 "f58124740e8d9cbf8b4f45ee9a3e30a2aced109381fc34583d1c28d49d54dfe5"

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  name "Clean-me"
  desc "System cleaner for logs, caches and more"
  homepage "https://github.com/Kevin-De-Koninck/Clean-Me"

  disable! date: "2024-12-16", because: :discontinued

  app "Clean Me.app"

  # No zap stanza required
end
