cask "codeql-bundle" do
  version "2.8.4"
  sha256 "bc56405f93d8141b07f7320c645f5e0ea26cd2912d6ba785de2b6342c82fb57d"

  url "https://github.com/github/codeql-action/releases/download/codeql-bundle-20220322/codeql-bundle-osx64.tar.gz"
  name "CodeQL CLI Bundle"
  desc "CodeQL bundle ensures compatibility and also gives much better performance than a separate download of the CodeQL CLI and checkout of the CodeQL queries"
  homepage "https://github.com/github/codeql-action"

  binary "#{staged_path}/codeql/codeql"
end