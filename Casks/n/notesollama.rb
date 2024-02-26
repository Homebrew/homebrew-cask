cask "notesollama" do
  version "0.2.4"
  sha256 "5eea5a5f373339d408498bc8fc489462f65b3a2acfa7789cc408d9f472543c72"

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
