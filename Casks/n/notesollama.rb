cask "notesollama" do
  version "0.2.5"
  sha256 "0570b3d95caf00a991d7ce225cbc9fa0f3b396d85bc1e61a35cbbecc18da5064"

  url "https://smallest.app/notesollama/dist/NotesOllama-#{version}.zip"
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
