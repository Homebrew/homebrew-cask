cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.38"
  sha256 arm:          "3ccac265ef0a89d21ff102c640afbdc7d550d424afa2263091c83ee0bbd62371",
         intel:        "7ecf31e2c34cd3498f2b9ba43c947f6706d256ea22b1e01cc8cf789aae128e93",
         arm64_linux:  "e0186c8d6fc3a684279b555ede70b6891cb23c266fa6fe865d36dfaddf8ccc14",
         x86_64_linux: "46332af579d30524d8911a43c0536a9547b353f94a51dc2d57817b091c83f9b0"

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
