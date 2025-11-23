cask "terminology" do
  version "0.1"
  sha256 :no_check

  url "http://media.agiletortoise.com/Terminology-for-OS-X/Terminology-for-OS-X.zip"
  name "Terminology"
  desc "Semantic lexical reference for Apple Dictionary"
  homepage "https://agiletortoise.com/terminology/mac/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  dictionary "Terminology-for-OS-X/Terminology.dictionary"

  # No zap stanza required
end
