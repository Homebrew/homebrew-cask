cask "codeql-bundle" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.6"
  sha256 arm:          "7240fa82b9ec43d0dc6d00a59f457e639b891f7ec5bc11409d77cf6506a6255f",
         intel:        "7240fa82b9ec43d0dc6d00a59f457e639b891f7ec5bc11409d77cf6506a6255f",
         arm64_linux:  "4d8da37ad4fc6527c95133c4097353cdc36d59c890be161d8c9efaa8c7381e91",
         x86_64_linux: "ebdb5704296af9751b378a03b24fe1f7ede5727455905bb64a9a82939beb1b4b"

  url "https://github.com/github/codeql-action/releases/download/codeql-bundle-v#{version}/codeql-bundle-#{os}#{arch}.tar.zst"
  name "CodeQL Bundle"
  desc "Semantic code analysis engine with precompiled standard query packs"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    regex(/^codeql-bundle[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "codeql"

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
