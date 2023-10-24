cask "codeql" do
  version "2.15.1"
  sha256 "c69cbfdd29969017dc19f5117b1bbbdf3483b6b4389ecc585cad9d33a963626b"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required
end
