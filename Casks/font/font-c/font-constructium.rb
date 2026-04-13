cask "font-constructium" do
  version "2026-04-12"
  sha256 "1622c9cbba22bfe8ae2b1a1fe69f43a315210470bf24f349a2e9eef0171cd710"

  url "https://github.com/kreativekorp/open-relay/releases/download/#{version}/Constructium.zip",
      verified: "github.com/kreativekorp/open-relay/"
  name "Constructium"
  homepage "https://www.kreativekorp.com/software/fonts/constructium/"

  font "Constructium.ttf"

  # No zap stanza required
end
