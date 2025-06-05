cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.23"
  sha256 arm:          "ec20cb8dee591236184b5d089615218d6500b7687267713309191d5bc4b0e025",
         intel:        "e42313f1e7596dc8b19b4dc90567407beb6a1ef059c109dddd452ac8d3462274",
         arm64_linux:  "3e06408dcf1a8adfb80efa97db3dca1675a4e35145fa1c9ac29a84836b7ff828",
         x86_64_linux: "70fd291fc47010b450ab6f47109d211017030337c2cbd70ba50af355602d58e1"

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
