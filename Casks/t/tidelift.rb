cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.77"
  sha256 arm:          "bf174481dbd332d1d014082393c5da6b59a6f5f84a05010b3b35404b90f41c74",
         intel:        "91cbf29f13cc10321c94279ac690fa22487fb5ea6d9517437b6993160866f953",
         arm64_linux:  "b93b06549d134f470830b62bc05480cd861363a9dac3d2a5ec869200af17070c",
         x86_64_linux: "0e1247f28ff81807b2dc14df2473984a62c8fdeeee2ca8a8b0b05eb8c317b672"

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
