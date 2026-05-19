cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.58"
  sha256 arm:          "41dabea147f60593496b0d0d0187331736cb2e5def10c86651058fca0f48cbe6",
         intel:        "ce8828b152f951d55c0254c79834e9a8949f94fa620dcf056bc76928da8d2e8c",
         arm64_linux:  "e7f80417057e5720fdedca02d6b5ea45efc95c58f4aefa6b50be232fd1300284",
         x86_64_linux: "885f47dd75b930e5cf885dfd07f9f3878026a9cbbc5ee51bef1bc2425b38ea32"

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
