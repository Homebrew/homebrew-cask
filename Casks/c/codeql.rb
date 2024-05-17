cask "codeql" do
  version "2.17.3"
  sha256 "b0d414c2443ab33b9a35337d5efabe1bbe0a3adc3a3ea57b9c309c95f89f6bcd"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
