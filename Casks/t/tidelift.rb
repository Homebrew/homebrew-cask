cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.75"
  sha256 arm:          "5564f8ec8fb0093140c2ddbc8e2d8ed25e09ceffdd3f57106ebc65688bd1b273",
         intel:        "224b8cfe825737b7f2cc79b58080cadbefad88ceb3dc6981299359f2427c397c",
         arm64_linux:  "0200268d148af4973854d8147abca144984d2259552b3dab027c319bbe9de980",
         x86_64_linux: "32f924a46a2329a77a6a1458f806b9eb50baeabb99ce57d88ee407a39c3935de"

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
