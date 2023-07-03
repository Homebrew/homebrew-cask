cask "codeql" do
  version "2.13.4"
  sha256 "4f94fb26301e8e16cbaf340924c01eb0b0b1a693ce8061a7e36e1076404810f8"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
