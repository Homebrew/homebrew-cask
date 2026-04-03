cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.52"
  sha256 arm:          "701dcc75a6f23f449d1e042fb477a71be0f0ab453006055bb3bab6b428d7416c",
         intel:        "f1d5cc001b42ba77a5e28073a4338f81cb6955ef68f3ea93031a2a73e8750856",
         arm64_linux:  "1a570790b73732766b8dbf5229603eff156c33759563e9a42747680c341ea69a",
         x86_64_linux: "e94c0f6cc820a6464c4468599c59bdccc70083a515fc580ff3a48bc673470179"

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
