cask "code-notes" do
  version "1.2.4"
  sha256 "c3844123d14642d423f8f04e4fca1bbe7661c54b109cd8eb3eb1cfda8a6d8a60"

  url "https://github.com/lauthieb/code-notes/releases/download/#{version}/code-notes-#{version}.dmg",
      verified: "github.com/lauthieb/code-notes/"
  name "Code Notes"
  desc "Code snippet manager"
  homepage "https://lauthieb.github.io/code-notes/"

  disable! date: "2024-12-16", because: :discontinued

  app "Code Notes.app"
end
