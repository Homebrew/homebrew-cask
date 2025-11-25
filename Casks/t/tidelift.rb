cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.39"
  sha256 arm:          "10ed3d77ec0bc9dfc6db0abbb8815cdb410af07be20666de7b5a7e3d72c8f6c2",
         intel:        "f342f8d01bbcb34a38c7d8a2a741ec823e28593080e9cd555bfa35469bc875bc",
         arm64_linux:  "10306962cea6763831ee6c599eba7c13062488ac45e13a17c85aba6754441e61",
         x86_64_linux: "796ef40bc0b8ed3e4fa4e0480ba4b8fa66916e78181499ec1ca9e53dfc1cd62f"

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
