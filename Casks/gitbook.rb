cask "gitbook" do
  version "1.1.0"
  sha256 "f8e2f7b28e7dfa18b3736f8d43d68068228774c0827fdc8c685846a129459c5f"

  url "https://github.com/GitbookIO/editor-legacy/releases/download/#{version}/gitbook-mac.dmg"
  appcast "https://github.com/GitbookIO/editor-legacy/releases.atom"
  name "GitBook"
  homepage "https://github.com/GitbookIO/editor-legacy"

  app "GitBook.app"

  caveats do
    discontinued
  end
end
