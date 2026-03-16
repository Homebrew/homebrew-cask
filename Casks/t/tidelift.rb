cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.49"
  sha256 arm:          "dec4b83277468cbbba87837797736a188ee7e8befee52fedd152936bc489011e",
         intel:        "994b3d7d071f82060928dfad31b2e8e92271b9bfa035056e0cd73c8afefcffb1",
         arm64_linux:  "f59305690e0bf72fa8ef641b8bb7c87bc3a3d7c43602501813f764c678872fc3",
         x86_64_linux: "31b0aa6fb0bd876a77b2732aabcfc0bb6a11b51a185416c267afe1ae231364e5"

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
