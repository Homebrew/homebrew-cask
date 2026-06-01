cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.59"
  sha256 arm:          "869b73a9d3408d2a4bbbac3122ea7ecae9f20f7e6628a9e8d53defd5d85989df",
         intel:        "cf81f4959986815708d7cd8e91d4fc05826834d771333f04e0cea8dfdd646b14",
         arm64_linux:  "fdd0dd35898ef98aeedb699cad98e0f24281de27d6cc6d78e13cb462f9867902",
         x86_64_linux: "df3bfe2981daf015a9b545bfa4faa48495078df6ca6e6b4e2999a5ef0e027496"

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
