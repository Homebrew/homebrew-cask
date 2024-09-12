cask "codeql" do
  version "2.18.4"
  sha256 "5c4b3a44929bbbe65a51ed77e737a32653e7e5ebf92783d03157ff6503f191ff"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-osx64.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
