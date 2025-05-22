cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.19"
  sha256 arm:          "7a33b71951ef0ef11b730d6e133138fd19e879169255a062f017df626a0cdae9",
         intel:        "fe60a325c42fb036aad7aa7b6613b061cc67877c4ea18d69f2d358ef5d33ae37",
         arm64_linux:  "50602da37bd4cd7444dcc26dac468ed2ca8fd7f74b48f2e5899f8e23103dadf6",
         x86_64_linux: "8c67a406efc3a9af8adfbb85942266fa7628dfe29d2da5abad4699ef0aa3dc99"

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
