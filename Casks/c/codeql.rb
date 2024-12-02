cask "codeql" do
  version "2.19.4"
  sha256 "eb283e7f3bde288a7a35269570174c647b2ca997a67c4c50affa053b21f08a34"

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
