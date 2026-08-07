cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.73"
  sha256 arm:          "93e72779292bb76bd12592479651fdec19ad549e3b8b7444508190ec47193742",
         intel:        "5c9553d70a6ea03a330054d6d5aff0137f939c0d7a4e0b573d491becb3d0d9a6",
         arm64_linux:  "269edee59879d216e09a14e4a4d319e6c31c017858e7c6a4e3497e3c4d16d0a1",
         x86_64_linux: "730fc189f316845d6c56846ad34331abe4c1631c0fb05647d204df660299de16"

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
