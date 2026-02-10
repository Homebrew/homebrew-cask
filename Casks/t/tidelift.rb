cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.45"
  sha256 arm:          "8b0cc190f2679bc8f2e905e910dbd7bccf1625c3f607dd52907f086780d2e135",
         intel:        "550785278a123b363fa914b95b4327f0bc66758008dc7d369c5cf7f17dcc00f1",
         arm64_linux:  "e0cc55e9c41f3e6eba548e6749199091858bea33c6ceb4f6a862d3ee749c1f13",
         x86_64_linux: "b279f1984bccf00f30bd4df401bfaa2cd04f8fd87ea6269ffdcf4a16d04e4fa0"

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
