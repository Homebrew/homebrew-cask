cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.16"
  sha256 arm:          "20b12693ed2b110ae6b873265058dab9c36c0e33497ccec8686b5d024aa25bb0",
         intel:        "557fb2105b0d3659187ac35c2307442b283ab2f3ad1acf183631c7f1bf6a3c9f",
         arm64_linux:  "ff23e44684f806dd6ccb6662ab5318fc38d7cc04c4007a514d9e2d59eb501041",
         x86_64_linux: "040ff98070d95fb6d7f4276510c6690608827cb0e7133a13fe0ed83a37570a04"

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
