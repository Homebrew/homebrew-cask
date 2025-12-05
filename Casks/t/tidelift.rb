cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.42"
  sha256 arm:          "b90a8ecaffca9b5d39a62808472483c888a86468ffc175a771e6dbf9b10fc73b",
         intel:        "0ec7bf126bc65d938c15e2dab91c9b1449ae3675001d12b119e9405a9e037e84",
         arm64_linux:  "ca315d1f997c824853bcb8321f7f3ea5b4eb1cced06c0648a3ce301dfb478146",
         x86_64_linux: "f976ab0f715f2007167ad1fd02c1832197376edd8c5ae71c7516032041ffba2f"

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
