cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.70"
  sha256 arm:          "eab2563ba05a8df4bc3071775a1a5539a4c678febd1e973cf95240d0f7031668",
         intel:        "9381a4defd300fc80d819e9dd0cbcac4fc44033c82d9fb782ecee5e85d834e93",
         arm64_linux:  "6d39efd9980585efa8c5939dfd8fb903910f5251137080e042fa91dec30bdf46",
         x86_64_linux: "644c166b4a4cab980e1ac72c8dab0ec5abc0937bc0c85db192a4e8defab40ce7"

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
