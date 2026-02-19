cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.46"
  sha256 arm:          "a6af524ef6d83aadc72a2ecc7cd0ed091e483c79858022821e30a4e9292f9957",
         intel:        "2850331bb09064ebb4b4a050b8fa7ecd3178ca185938198da4726dac2ffb4169",
         arm64_linux:  "8b6dd4674318e22214707244379706207ef04f17b98f5f4c3b296a0f21139cee",
         x86_64_linux: "76f20db90ca752b1037d20260783853e67d9bdc78c75c210db7bff3f9ec5fcda"

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
