cask "codeql" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.2"
  sha256 arm:          "33c8f7097a1ccd6d8362ff1ee04d66eb4a309002ec6bffa256030d3881f706f2",
         intel:        "33c8f7097a1ccd6d8362ff1ee04d66eb4a309002ec6bffa256030d3881f706f2",
         arm64_linux:  "488515068ace906b4047ecfebc650406d9761b1409cf4632768303eb35f1bb2c",
         x86_64_linux: "ac0a4ea06843577ed3a1f5af145756c3085ebfd42e59a5aff1b66489f29d16dc"

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
