cask "font-antinoou" do
  version "1.0.6"
  sha256 :no_check

  url "https://www.evertype.com/fonts/coptic/AntinoouFont.zip"
  name "Antinoou"
  homepage "https://www.evertype.com/fonts/coptic/"

  livecheck do
    url :homepage
    regex(/Antinoou\s+is\s+v?(\d+(?:\.\d+)+)/i)
  end

  font "AntinoouFont-#{version}/Antinoou.ttf"
  font "AntinoouFont-#{version}/AntinoouItalic.ttf"

  # No zap stanza required
end
