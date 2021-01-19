cask "qlmarkdown" do
  version "1.0b16"
  sha256 "ade60fd3fbb6276f6175c0ab8965e124cac6501868caadc12082b56321dfe4d9"

  url "https://github.com/sbarex/QLMarkdown/releases/download/#{version}/QLMarkdown.zip"
  appcast "https://github.com/sbarex/QLMarkdown/releases.atom"
  name "QLMarkdown"
  desc "Quick Look extension to preview Markdown files"
  homepage "https://github.com/sbarex/QLMarkdown"

  app "QLMarkdown.app"
end
