cask "toland-qlmarkdown" do
  version "1.3.6"
  sha256 "810853c000dd5c3e18978070abb7f595ad52ddfa568fccb428d28b513d1810ab"

  url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
  name "QLMarkdown"
  desc "Quick Look generator for Markdown files"
  homepage "https://github.com/toland/qlmarkdown"

  disable! date: "2024-12-16", because: :discontinued

  qlplugin "QLMarkdown.qlgenerator"

  # No zap stanza required
end
