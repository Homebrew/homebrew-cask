cask "lw-scanner" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "tar.gz"

  version "0.30.0"
  sha256 arm:          "743818512086b2f4737b7f200b246466ffdb67a9d2db932a3ffec6573a64bdc5",
         intel:        "2bfa0b6a49af577a82894b583848b09052f2f80d20ea96feb9fbf0d968ab61de",
         arm64_linux:  "9343cd3951a5bbd603a494265dc4e473563f7deb9e60b9fb44ce58b2e9c6d08d",
         x86_64_linux: "cc87ac3775a7f066441dde764b38f515697bc1d38145dc55bfedb8113d8d2759"

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
