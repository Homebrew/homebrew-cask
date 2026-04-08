cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.54"
  sha256 arm:          "849b7d321d1605b114d25588d01355dd571d1ac9aa418a24d08e852dc5c382f8",
         intel:        "3feb1701c4b2756132f4cbaf456bd3dc2afc367254f8bd0e190acc81831e9e89",
         arm64_linux:  "0ac2614d19105947da167f020272eb9cd071fb5f7891fbb7227e36aa0bee44fc",
         x86_64_linux: "c8e29fef414c7552b53b8c858fb25c2353f23c9157fa63cb28aa161c26bf7619"

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
