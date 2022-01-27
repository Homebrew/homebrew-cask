cask "noisy" do
  version "1.3"
  sha256 :no_check

  url "https://github.com/downloads/jonshea/Noisy/Noisy.zip"
  name "Noisy"
  desc "White noise generator"
  homepage "https://github.com/jonshea/Noisy"

  app "Noisy.app"

  zap trash: "~/Library/Preferences/com.rathertremendous.noisy.plist"
end
