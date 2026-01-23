cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.43"
  sha256 arm:          "a3d23a85c265c6de2c6de3be00643f86acad9e9a54354a14d85783e6542d61b4",
         intel:        "f9cc59f85d39cadcfea1767c2c755590d57567f4ba72ed022d962a1e766c2843",
         arm64_linux:  "767ef2fe26ae0139ccaf59bada284ee2cda04cf69ab8174cd971ce01fecb12d7",
         x86_64_linux: "af4d45770218dbe40a3651abda1f693dcc8f5f3eeec0e835834955c5a522be40"

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
