cask "font-commit-mono" do
  version "1.143"
  sha256 "f7d1f26a7c7554800a996f76f5d706bf0648b936ca2a66b5bc4d46e3a2c49ed0"

  url "https://github.com/eigilnikolajsen/commit-mono/releases/download/v#{version}/CommitMono-#{version}.zip",
      verified: "github.com/eigilnikolajsen/commit-mono/"
  name "Commit Mono"
  homepage "https://commitmono.com/"

  font "CommitMono-#{version}/CommitMono-400-Italic.otf"
  font "CommitMono-#{version}/CommitMono-400-Regular.otf"
  font "CommitMono-#{version}/CommitMono-700-Italic.otf"
  font "CommitMono-#{version}/CommitMono-700-Regular.otf"

  # No zap stanza required
end
