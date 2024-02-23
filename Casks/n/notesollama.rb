cask "notesollama" do
  version "0.2.1"
  sha256 "86446927a946f455bdff0a0309eac43ddb0f76186a561fb91038b886b0845564"

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
