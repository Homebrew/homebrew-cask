cask "codeql" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.4"
  sha256 arm:          "7da72a7a758ef272985cce665ddb22bccc0b0a212f09f175d943eb5ff5fc57e4",
         intel:        "7da72a7a758ef272985cce665ddb22bccc0b0a212f09f175d943eb5ff5fc57e4",
         arm64_linux:  "168093d6650ca00e43c880885317e6c5745af7057da7ba7dc27d4a8f8e3e25af",
         x86_64_linux: "393bf92b66596141ec93baf9b483f4a350f3749916c922fed0dd63c67706047d"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-#{os}#{arch}.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
