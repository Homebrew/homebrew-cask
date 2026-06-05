cask "sast" do
  version "1.0.0"
  sha256 "12e36cbfad8f92db05f02e557b5cf6b8154856a1d8217c49007c407b1a69dcf9"

  url "https://github.com/vulnz/sast/releases/download/engine-#{version}/sast-macos-arm64",
      verified: "github.com/vulnz/sast/"
  name "Insomnia SAST"
  desc "Free, fast static application security testing for CI/CD"
  homepage "https://insom.ai/"

  depends_on arch: :arm64

  binary "sast-macos-arm64", target: "sast"

  caveats <<~EOS
    sast is also available cross-platform via pip:
      pip install sast

    or as a Homebrew tap:
      brew install vulnz/sast/sast

    Learn more at https://insom.ai
  EOS
end
