cask "emojipedia" do
  version "20190306"
  sha256 "32c2e398cac48a9fbd05e45b1a11b791c539bb09aa964c54ec066e2a6aa1f047"

  url "https://github.com/gingerbeardman/Emojipedia/releases/download/#{version}/Emojipedia.dictionary.zip"
  name "Emojipedia"
  desc "Dictionary containing Emoji and their meanings"
  homepage "https://github.com/gingerbeardman/Emojipedia"

  dictionary "Emojipedia.dictionary"
end
