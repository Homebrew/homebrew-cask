cask "codeql" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.5"
  sha256 arm:          "8ae1473137e44e8f701b75d34055dde10ba09f9deaabbb504fc13d18e4281576",
         intel:        "8ae1473137e44e8f701b75d34055dde10ba09f9deaabbb504fc13d18e4281576",
         arm64_linux:  "8a76f6c5c8deebc07adebb9143802be71b97ec4c7f7c753c810dffb9b0b9b763",
         x86_64_linux: "9026c01f4aa4ccd66fe734c8fe037e7a03aecfe151f681760922c304dda14208"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-#{os}#{arch}.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
