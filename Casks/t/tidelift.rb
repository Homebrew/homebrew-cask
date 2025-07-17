cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.28"
  sha256 arm:          "cfdf7a64ebb203a66f82b7e6995f53d5a9531073b5df692b7814d06e8539bb63",
         intel:        "888eedb50834c0ead75ca775c7ef4517ac5f71a8491e7a013d51bbea7bf12e8a",
         arm64_linux:  "7827ffe37f64516fc6cd2458c160a607c122316d5b22f929043f78fd14d27180",
         x86_64_linux: "347714e98e311f9a9f49e97cabc1fa505819546d271d4797b212724c1bd54c73"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
