cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.74"
  sha256 arm:          "c4d3e341ac2ea8b66cc624978bb511899bed7c2bdf50a822a550bde56c7e63ec",
         intel:        "43e9de7e6d01520f5d7b0f5f3dcb557a0190a8b00f8f961e8c0c0a01ff87f106",
         arm64_linux:  "f83dc155d09ad98d4bc0e68e2eb5ff7447438f4b861e5a438de4acfd9bc0dbe4",
         x86_64_linux: "2d731623238ee5073885d570e766517d8677acb76067a1a1563bb106f5fd2859"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight_steps do
    set_permissions "tidelift", "+x"
  end

  # No zap stanza required
end
