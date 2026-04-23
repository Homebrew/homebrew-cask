cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.57"
  sha256 arm:          "7876c7b66023432d3bcb4af1c17ec2a8418633f85045b9d3fec7916234d0b50c",
         intel:        "cb84eb18d38703cf678256bb2f9410770f1a440092aa8b4bda1b80e17aeb2fa6",
         arm64_linux:  "feae9ab6c6d8972e7f9233d87e1cbb9c4451db7d0a42cb459b6b794f6b5665a4",
         x86_64_linux: "674ea2f886c0eef92381c06b8e9a09b89562817c85e78709ab119d10eac04654"

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
