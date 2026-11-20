cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "271.2085.0"
  sha256 arm:          "2d22388f58be6f4dfa7a8f18c1e231871164dcacc16e407559029d7232816b4a",
         intel:        "68457ab1825331e3eac85191b7c32737cbd8993867f5a9c50dfe012c5509e8f7",
         arm64_linux:  "877aee612a17dab48144466282a6414ec58ab428a10b97c7e13edd9b6b3dc96e",
         x86_64_linux: "e398e799027f41749ea33faa57470307d13d40f910961858c7e30adbd778ae08"

  url "https://download.jetbrains.com/language-server/kotlin-server/#{version}/kotlin-server-#{version}#{arch}.#{os}"
  name "Kotlin LSP"
  desc "Official Kotlin Language Server"
  homepage "https://github.com/Kotlin/kotlin-lsp"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  binary "kotlin-server-#{version}/kotlin-lsp.sh", target: "kotlin-lsp"

  zap :not_required
end
