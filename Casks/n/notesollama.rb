cask "notesollama" do
  version "0.2.6"
  sha256 "9b2a94e5d366686bee91942bad9967e6e00558024d78438b05efd92f3bee79b1"

  url "https://smallest.app/notesollama/dist/NotesOllama-#{version}.zip"
  name "NotesOllama"
  desc "LLM support for Apple Notes through Ollama"
  homepage "https://smallest.app/notesollama/"

  livecheck do
    url :homepage
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
