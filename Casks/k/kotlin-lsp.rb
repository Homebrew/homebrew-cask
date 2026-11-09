cask "kotlin-lsp" do
  arch arm: "-aarch64"
  os macos: "sit", linux: "tar.gz"

  version "263.7084.0"
  sha256 arm:          "b403bf8a54bd458e3ba6731cf8abb3340be08b439c03576dfc02b13faf3694b8",
         intel:        "b29c393a5e541153d03d626e7946268437e358a667a5f914a126dbb4007664b1",
         arm64_linux:  "450ab7c1d80e48106aa429b48cb4226d82ca12a8a2400447ae02386794780cac",
         x86_64_linux: "ae0c4b01e17ab73a4a5227a78ea99e6dcbe3e499600315b22759a4e4cddd11df"

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
