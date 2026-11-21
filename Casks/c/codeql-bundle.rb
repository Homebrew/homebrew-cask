cask "codeql-bundle" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.4"
  sha256 arm:          "d5940b767427f113705aca401c7c09cf7af8cedb82fdad8a170c9d964b3a699b",
         intel:        "d5940b767427f113705aca401c7c09cf7af8cedb82fdad8a170c9d964b3a699b",
         arm64_linux:  "1c015b411c6e1c7f7e767eb8c9408fc6a2012d24d78b177cf22f29edc5772d10",
         x86_64_linux: "da3e952c7fe978a0b6b93e75d9cbabbdf8535667ca0810bd4b2ae37bc840ffee"

  url "https://github.com/github/codeql-action/releases/download/codeql-bundle-v#{version}/codeql-bundle-#{os}#{arch}.tar.zst"
  name "CodeQL Bundle"
  desc "Semantic code analysis engine with precompiled standard query packs"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    regex(/^codeql-bundle[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  conflicts_with cask: "codeql"

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
