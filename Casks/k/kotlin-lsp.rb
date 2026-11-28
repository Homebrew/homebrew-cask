cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "271.3588.0"
  sha256 arm:          "db72f02b4a70936133d66ffbe7540bbed1da3740ab4822dc6684edd04e51b296",
         intel:        "75685e727b7bb0adcc9d17d9a955d108e4bf6e6c19a6ec838d97315da50cb85a",
         arm64_linux:  "a31835754904fb6286a974bb415edbde971a19fb81646fd431601f57cf33ff52",
         x86_64_linux: "0232cf959ff59e138c7ce2e8665018ca4622cad1088d63aa727e5b4f6ce73717"

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
