cask "contextlattice" do
  version "3.4.21"
  sha256 "8354ad48402e241160a2f1d46c2f565cca01e7c022be8bd715e59161b41c3f6b"

  url "https://github.com/sheawinkler/ContextLattice/releases/download/v#{version}/ContextLattice-macOS-universal.dmg",
      verified: "github.com/sheawinkler/ContextLattice/"
  name "ContextLattice"
  desc "Local-first memory infrastructure for AI agents"
  homepage "https://contextlattice.io/"

  livecheck do
    url "https://github.com/sheawinkler/ContextLattice/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  artifact "ContextLattice.command", target: "#{appdir}/ContextLattice.command"
  artifact "Monitoring.command", target: "#{appdir}/ContextLattice Monitoring.command"
  artifact "README.txt", target: "#{appdir}/ContextLattice README.txt"

  zap trash: [
    "~/.contextlattice",
    "~/ContextLattice",
    "~/Library/Application Support/contextlattice",
    "~/Library/Logs/contextlattice",
  ]
end
