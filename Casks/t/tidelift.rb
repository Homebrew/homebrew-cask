cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.78"
  sha256 arm:          "62b770313a279e8beee75537f3a9eabd745d0d6142d9338275e80ff1493ecb34",
         intel:        "5066c7ee35982906c07a388c2042c68143e2c34c44901ffb60b2e50a09fa4334",
         arm64_linux:  "0185a1dcee055a8cdac7088d9e8b0e50625c24857eb67723bccd59cad0f4aba2",
         x86_64_linux: "bce4fdcdacec7c5e39801827931d0452ff0ed8efff22d6fddcd2bd0e8f4f4f25"

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
