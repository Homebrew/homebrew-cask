cask "codeql-bundle" do
  arch arm: on_system_conditional(macos: "64", linux: "-arm64"), intel: "64"
  os macos: "osx", linux: "linux"

  version "2.27.5"
  sha256 arm:          "c671dd6956a604a189aa43827c54d2cff974b7dfcb10290a7ced4d3e3f52fade",
         intel:        "c671dd6956a604a189aa43827c54d2cff974b7dfcb10290a7ced4d3e3f52fade",
         arm64_linux:  "bf4d478810886959783c114a39cb0f95f1f5ca19f6baa84d64c86283ef20fded",
         x86_64_linux: "141e6eb4e99c8498a1258e282e6f7b59c747b4b1a7eabc7cbf7d1aa92792edf0"

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
