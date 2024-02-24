cask "notesollama" do
  version "0.2.3"
  sha256 "8343010333c5dcbfc947c8bc55ddb255ca8fc7e51c35784b329bca57212b4ebd"

  url "https://smallest.app/notesollama/NotesOllama-#{version}.zip"
  name "NotesOllama"
  desc "LLM support for Apple Notes through Ollama"
  homepage "https://smallest.app/notesollama/"

  livecheck do
    url "https://smallest.app/notesollama/"
    regex(/NotesOllama-(\d+(?:\.\d+)*)\.zip/i)
  end

  depends_on macos: ">= :ventura"

  app "NotesOllama.app"

  uninstall quit: "NotesOllama"

  zap trash: [
    "~/Library/Caches/app.smallest.NotesOllama",
    "~/Library/HTTPStorages/app.smallest.NotesOllama",
  ]
end
