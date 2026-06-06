cask "sast" do
  version "1.0.0"
  sha256 "2e3cc8f0f73ee0b06e0a970295cc0a73dd3c987e6230248717d820c18d537096"

  url "https://github.com/vulnz/sast/releases/download/engine-#{version}/sast-macos-arm64",
      verified: "github.com/vulnz/sast/"
  name "Insomnia SAST"
  desc "Free, fast static application security testing for CI/CD"
  homepage "https://insom.ai/"

  depends_on arch: :arm64

  binary "sast-macos-arm64", target: "sast"

  zap trash: [
    "~/Library/Application Support/sast",
    "~/Library/Caches/sast",
  ]

  caveats <<~EOS
    sast is also available cross-platform via pip:
      pip install sast

    or as a Homebrew tap:
      brew install vulnz/sast/sast

    Learn more at https://insom.ai
  EOS
end
