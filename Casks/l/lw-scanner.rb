cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "tar.gz"

  version "0.29.2"
  sha256 arm:          "620e875a9d225d68dd2412d3d909c0b6b6880b63209f6610451d96159c298b7b",
         intel:        "b8b2e512c1efc037455c710089fcea38d705c083cbbc3e59c99d49d47b186d49",
         arm64_linux:  "cca1b384a038d116a560ac358c9d4bd45e2d0c3b7039b8b861e65e0bc94663df",
         x86_64_linux: "28f564755a145dafe775b35e8d960464141b304ab6de9bcd3606b2f7c033800f"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://github.com/lacework/lacework-vulnerability-scanner/releases/download/v#{version}/lw-scanner-#{os}-#{arch}.#{url_end}"
  name "Lacework vulnerability scanner"
  desc "Lacework inline scanner"
  homepage "https://github.com/lacework/lacework-vulnerability-scanner"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/lw-scanner"

  zap trash: "~/.config/lw-scanner"
end
