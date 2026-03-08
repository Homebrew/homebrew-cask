cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.48"
  sha256 arm:          "f96b9d0cd5a12ad9b05f0a1f58aaa96e189c505747c0cb5e7847b1c8a0fab61a",
         intel:        "6a09e48f4a46d26b7671188411ce4f6c82805d7f5eba46166b107229c3f36f9c",
         arm64_linux:  "4adace6bfc8f202b564bd9963d2183badd8d56ae41b5d145bd2666c7dc919e80",
         x86_64_linux: "b4089ebb62838599fe301398a63b9f8ad64cfdb6f9d28a76546853f3eb157bfe"

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
