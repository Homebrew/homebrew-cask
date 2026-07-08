cask "codeql" do
  version "2.26.0"
  sha256 "b3f839985c59105ef5d8ebe0a4eb61bda4ec4d9b1bd5e8335fbb456c8883d1c7"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
