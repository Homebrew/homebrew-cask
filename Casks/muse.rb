cask "muse" do
  version "4.1.1"
  sha256 "809ba172f9929b4b0d49bfbe5f9210946013761f3cdd27862fc887b31ae5d96c"

  url "https://github.com/xzzz9097/Muse/releases/download/v#{version}/Muse.app.zip"
  name "Muse"
  desc "Open-source Spotify controller with TouchBar support"
  homepage "https://github.com/xzzz9097/Muse"

  depends_on macos: ">= :sierra"

  app "Muse.app"
end
