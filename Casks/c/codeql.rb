cask "codeql" do
  version "2.24.3"
  sha256 "663ccd69db762f64b8e431ddad798c50d6fd844ae28ab631a89a7545f0077f90"

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
