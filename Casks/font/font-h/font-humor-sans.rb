cask "font-humor-sans" do
  version "1.0"
  sha256 "2ded6a27448c9ed30aaff177744e2bcf1e52e0aab018b2a8be64565df633318f"

  url "https://antiyawn.com/uploads/Humor-Sans-#{version}.ttf",
      verified: "antiyawn.com/"
  name "Humor Sans"
  homepage "https://xkcdsucks.blogspot.com.au/2009/03/xkcdsucks-is-proud-to-present-humor.html"

  font "Humor-Sans-#{version}.ttf"

  # No zap stanza required
end
