cask "codeql" do
  version "2.16.5"
  sha256 "de1d2870cc9ccda13dfe3fe006486731992a5f56fc5ce069f397205361a8fb18"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
