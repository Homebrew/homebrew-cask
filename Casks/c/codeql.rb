cask "codeql" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.6"
  sha256 arm:          "ded9d52294b4ba4f89e6d1e83053bb94d07c50c9bdea9841ec9897e5fa2ffbc9",
         intel:        "ded9d52294b4ba4f89e6d1e83053bb94d07c50c9bdea9841ec9897e5fa2ffbc9",
         arm64_linux:  "43a11308c1821029d748db1289627c789b84c86469e6d38dd4d1643015220c9a",
         x86_64_linux: "6c79af6d18c48f23a05fc11810f35061a70134b9e143dd40d8e563703af1525a"

  url "https://github.com/github/codeql-cli-binaries/releases/download/v#{version}/codeql-#{os}#{arch}.zip"
  name "CodeQL"
  desc "Semantic code analysis engine"
  homepage "https://codeql.github.com/"

  binary "#{staged_path}/codeql/codeql"

  zap trash: "~/.codeql"
end
