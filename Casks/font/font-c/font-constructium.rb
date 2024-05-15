cask "font-constructium" do
  version :latest
  sha256 :no_check

  url "https://www.kreativekorp.com/swdownload/fonts/xlang/constructium.zip",
      user_agent: :fake
  name "Constructium"
  homepage "https://www.kreativekorp.com/software/fonts/constructium.shtml"

  font "Constructium.ttf"

  # No zap stanza required
end
