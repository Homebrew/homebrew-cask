cask "codeql" do
  version "2.25.2"
  sha256 "f604fc50d6d60178cc86bfa146cee0dd9ef73b616270e34dc2bbfb9b0f4e9b87"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
