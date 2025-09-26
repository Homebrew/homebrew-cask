cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.32"
  sha256 arm:          "6cb17e4a0bad571e7e71f67d5b67e4c9df5dc7852c3ae52019e5c95e747bd396",
         intel:        "a374e817108eb21c10eae60ed9fc2aaa8caafde35c0aeecd26ede56926c4f257",
         arm64_linux:  "5a138bb99490fb54634b09b61a80a2593d335c2585481ba8713259220044d961",
         x86_64_linux: "fb6f78b46262a2f96c256e285fc6a4b496a2281e386fe8c41a96f7ae2758230c"

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
