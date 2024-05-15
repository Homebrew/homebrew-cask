cask "font-fairfax" do
  version :latest
  sha256 :no_check

  url "https://www.kreativekorp.com/swdownload/fonts/relaybm/fairfax.zip",
      user_agent: :fake
  name "Fairfax"
  homepage "https://www.kreativekorp.com/software/fonts/constructium.shtml"

  font "Fairfax.ttf"
  font "FairfaxBold.ttf"
  font "FairfaxItalic.ttf"
  font "FairfaxSerif.ttf"

  # No zap stanza required
end
