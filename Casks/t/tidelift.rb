cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.51"
  sha256 arm:          "0ab8cd76c4465cbd711a320855e979e489d92f851bbfd03b22fd643af7a7676d",
         intel:        "f26c9a76ce295ba46e01bbc619a7979e8a11da789f00ca5a8d60538141b993c1",
         arm64_linux:  "d68273ecfb04b3ac1c73dfac21ce30b96c220cc3e0e955bea08d0ac5cf521212",
         x86_64_linux: "8730d08ccc6947dfd7d168f2260e190f4a1addc0c68048d2538303ef5d8b7a1e"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
