cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.30"
  sha256 arm:          "50d8255ed7ea570511523da9f223eb644e4f0be268226ede3d25742137c92bfa",
         intel:        "36b8743a4b56e69c886dff958f67e16cc5d7095d4c8e2371307bdb13fdfcf180",
         arm64_linux:  "5ead6d80bf6e9fd68a08fdfd4f41291a809d3d494e805cb2b1a653935025185c",
         x86_64_linux: "8cd792e9b5e69a742b80e9098775fdbf530a33012d4f4c1b76147c764b5c3fbf"

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
