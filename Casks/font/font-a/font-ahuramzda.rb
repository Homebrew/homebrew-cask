cask "font-ahuramzda" do
  version "1.0"
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/ahuramazda/b2c0eeb9186f389749746f075b5a1abf/ahuramazda.zip"
  name "Ahuramzda"
  homepage "https://fontlibrary.org/font/ahuramazda/"

  livecheck do
    skip "No version information available"
  end

  font "Ahuramazda-Avestan-Font-#{version}/ahuramazda.ttf"

  # No zap stanza required
end
