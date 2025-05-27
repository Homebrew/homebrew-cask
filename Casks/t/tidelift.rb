cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.22"
  sha256 arm:          "622db234f0f5369fde98723fec484bda3d86e62a7e41e5d161112596c88f0bd8",
         intel:        "c6dc533eaa3bb407d2a5cfddcb01623ce104024f3ce19cd5fc013692cd8642ad",
         arm64_linux:  "4212b9dd847e5ba040b9e1e42bc1b4752f8c35709a34e5d1d8f220535cca31ff",
         x86_64_linux: "fdf4852472be999f9f169fb8a8a260f6ce0f46081de4a965106f6ab2b7559dcb"

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
