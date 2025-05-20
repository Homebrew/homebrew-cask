cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.18"
  sha256 arm:          "6e1b10655bc85b472990dc2a313247510ef4e5edfc57fc44eb04048cd45b776d",
         intel:        "2b8a42f44bc0005f32222107a8bb0e334d1878be32d1b8495cc78991a1cb44da",
         arm64_linux:  "110b108f6873f9f344631d6a84232518a71487d4691d87db2e72291542f03b88",
         x86_64_linux: "24a75daa72983e32a64b3ce0b5ba0c15956efbe1456ff2d8d1574e675cf3d4ea"

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
