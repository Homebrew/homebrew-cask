cask "ia-markdown-dictionary" do
  version "1.0"
  sha256 "723746bae20f5e5d3991a64514a25502ad31c166bbe7bde19046ad68dca66eb0"

  url "https://files.ia.net/tips/iA-Markdown-#{version}.dictionary.zip"
  name "iA Markdown Dictionary"
  desc "Markdown dictionary for Dictionary.app"
  homepage "https://ia.net/topics/ia-markdown-dictionary"

  livecheck do
    skip "No version information available"
  end

  dictionary "iA Markdown.dictionary"

  # No zap stanza required
end
