cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.56"
  sha256 arm:          "0f813add48724f99bef85620171b58d81386be8659ce92cad044f6dab3c10212",
         intel:        "5f52edbb8980f90138a9ac3f48e7e1f89c91d2d06bf2b3cb0be96327cddeb46e",
         arm64_linux:  "ee9371c4c96d48164decb7f2533b4242105203f643b036b8f5611d57f4858096",
         x86_64_linux: "a2a22d3885daf5b79a378a90d78724c311b59ec7feb4e8175b44be526a5564f9"

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
