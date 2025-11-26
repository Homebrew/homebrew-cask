cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.40"
  sha256 arm:          "69c2890a54cbe5d8b53f1b193fe82f67ef14934d6752ad7aa4ecd090888b3f4c",
         intel:        "e6629987f9e78606d59ec4f0baa7c0ebe53b3516552d772411e404dc025e7d67",
         arm64_linux:  "44728ed9f3453bb0f987a2c323ec22265cd676e6e6bd02b5a47b771da0fbe778",
         x86_64_linux: "f2d1dfc2e69d94e2c04631a10c1813c7c0b8f6c732812c7571b7e67e4532f1bb"

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
