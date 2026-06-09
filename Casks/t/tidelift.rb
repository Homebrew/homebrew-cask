cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.64"
  sha256 arm:          "59722f26d962ccaeb4c6411d0c9810ada335147090a2bd23732b63eb6fe45bb0",
         intel:        "1f34f04d8973959e962096d6ff5dcfffbc3419ff46031e6fa75f1dad2169e8dc",
         arm64_linux:  "29683c6d5e1fe39238f33834f8fb81e3ddab8554c04d8acdd4028d95bf863a69",
         x86_64_linux: "15be2c6ba954bb4bbc8503ab90b390887850f096d2f02fc7437d687f0c3a3d75"

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
