cask "code-notes" do
  version "1.2.4"
  sha256 "c3844123d14642d423f8f04e4fca1bbe7661c54b109cd8eb3eb1cfda8a6d8a60"

  # github.com/lauthieb/code-notes/ was verified as official when first introduced to the cask
  url "https://github.com/lauthieb/code-notes/releases/download/#{version}/code-notes-#{version}.dmg"
  appcast "https://github.com/lauthieb/code-notes/releases.atom"
  name "Code Notes"
  homepage "https://lauthieb.github.io/code-notes/"

  app "Code Notes.app"
end
