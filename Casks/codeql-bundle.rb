cask "codeql-bundle" do
  version "20220322"
  sha256 "bc56405f93d8141b07f7320c645f5e0ea26cd2912d6ba785de2b6342c82fb57d"

  url "https://github.com/github/codeql-action/releases/download/codeql-bundle-#{version}/codeql-bundle-osx64.tar.gz"
  name "CodeQL CLI Bundle"
  desc "Semantic code analysis engine cli bundle that contains precompiled queries"
  homepage "https://github.com/github/codeql-action"

  binary "#{staged_path}/codeql/codeql"
end
