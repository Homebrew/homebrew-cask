cask "font-hack" do
  version "3.003"
  sha256 "0c2604631b1f055041c68a0e09ae4801acab6c5072ba2db6a822f53c3f8290ac"

  url "https://github.com/source-foundry/Hack/releases/download/v#{version}/Hack-v#{version}-ttf.zip",
      verified: "github.com/source-foundry/Hack/"
  name "Hack"
  homepage "https://sourcefoundry.org/hack/"

  font "ttf/Hack-Regular.ttf"
  font "ttf/Hack-Italic.ttf"
  font "ttf/Hack-Bold.ttf"
  font "ttf/Hack-BoldItalic.ttf"

  # No zap stanza required
end
