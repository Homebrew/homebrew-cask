cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.62"
  sha256 arm:          "4ecd5667a00afd56a03e5c5aa6e117356109ccff0d57593eca9cb8c86df0fe3d",
         intel:        "0e1e1ecfacef065f6a3a1a357856aa29631a51d34a61cf0b2bbaf3895a44ceb5",
         arm64_linux:  "688de580496ac50b073ddc823c127d37cdc1603be220dde38a082ead7561e684",
         x86_64_linux: "b09a18f0003cb1255a4e806ce4cd5b275465fd4837f5356639327286f57b4049"

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
