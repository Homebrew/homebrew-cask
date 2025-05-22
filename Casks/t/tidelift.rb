cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.20"
  sha256 arm:          "39e61b26f0c20f65a993b65bfe7333aef9d494f29e82517b84a04fc7083e1d0e",
         intel:        "20f5dc1cf24c738f139f47c3eef1d3373c4c59db1ba7b886644259b91276c9d3",
         arm64_linux:  "c3e88860c65ac0d422250dd2bc5398ba7045e999a1d083ba5ed06d07b68464fc",
         x86_64_linux: "f74d200da166ed65a214397d9f3acf0b7dc2f293b813a626f58325e7ab05be96"

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
