cask "developerexcuses" do
  version "2.1.4"
  sha256 "cbcee9d430a707f0b1b6187392af038ea8d8a5602a05a6d327dc54b4d01ab657"

  url "https://github.com/kimar/DeveloperExcuses/releases/download/#{version}/DeveloperExcuses.saver.zip"
  name "Developer Excuses Screensaver"
  desc "Screensaver showing quotes from developerexcuses.com"
  homepage "https://github.com/kimar/DeveloperExcuses"

  screen_saver "DeveloperExcuses.saver"

  # No zap stanza required
end
