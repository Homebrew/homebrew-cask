cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.37"
  sha256 arm:          "f4c9b87b9e51c9ae42aefe3802168e8256fa07b8ce4f88a5d9e76a97d6d3646d",
         intel:        "c8694e3f22dbd1f7a793973a5917a95a3826ff600e7a44724b0c361aeb78e387",
         arm64_linux:  "c8ad615e27c35188031c06cfde4b04f039cb24938a683b73c7f4e08d590b5df5",
         x86_64_linux: "16e0156230fe497f56281106456fd0693b7d46ab39728bc0b5bf84e62be886b4"

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
