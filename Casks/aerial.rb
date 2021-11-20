cask "aerial" do
  version "2.3.3"
  sha256 :no_check

  url "https://github.com/JohnCoates/Aerial/releases/download/v2.3.3/Aerial.saver.zip"
  name "Aerial Screensaver"
  desc "Apple TV Aerial screensaver"
  homepage "https://github.com/JohnCoates/Aerial"

  depends_on macos: ">= :sierra"

  screen_saver "Aerial.saver"

  zap trash: "~/Library/Caches/Aerial"
end
