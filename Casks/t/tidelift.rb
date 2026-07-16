cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.68"
  sha256 arm:          "a5b157f026d47188812e71ce1b55a979090759503f59ab70d934893b05316645",
         intel:        "a51e178c4d789a9d48a1daaf341b5b8b67bc6ab374d93b97fe6e7eb1931dcdea",
         arm64_linux:  "b4bfb7eaaabe1a69077fac973f556d82761f04299e5443cec2bd34a871128f8e",
         x86_64_linux: "0caa009ac405ca56c9477fa5d5b24bd4fbbb4f575c177f05d7d43ab4434d2f5e"

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

  postflight_steps do
    set_permissions "tidelift", "+x"
  end

  # No zap stanza required
end
