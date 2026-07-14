cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.67"
  sha256 arm:          "24af280ca65180680232788e8f2a895b10f61de4d94515a0a629ef36564495b9",
         intel:        "8e5f854000c2e9a117b4f5c105e38eed35b068c80ea72d140c8ae8c39420e1a6",
         arm64_linux:  "83e68c6d66298abe0423a4545c1654dfe9714145ce5b65380df90cca85403ded",
         x86_64_linux: "333604da107c42153f586b63457aa7672d7e1b275ce5e078a675355bb90f744d"

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
