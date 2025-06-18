cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.25"
  sha256 arm:          "26825cb822188a68f4dbdda56ec82eecad7742091d3838a842cc659d0e22fad7",
         intel:        "3a821b58e5d032da32131c7ad4b51a7eb9432d071aa52bfdef8a5b47cf85f787",
         arm64_linux:  "d606b7aaf55a035c4d663d268794a704c650166aedacc601c8d483833eed7222",
         x86_64_linux: "6f5c097ab082202e71b09cfdfa0d5ad18f30abea963eeed5abc5818d210fbc39"

  url "https://download.tidelift.com/cli/#{version}/#{os}#{arch}/tidelift"
  name "Tidelift CLI"
  desc "Tool to interact with the Tidelift system"
  homepage "https://tidelift.com/cli"

  livecheck do
    url "https://download.tidelift.com/cli/index.html"
    regex(%r{href=.*?/cli/(\d+(?:\.\d+)+)/#{os}#{arch}/tidelift}i)
  end

  binary "tidelift"

  postflight do
    set_permissions "#{staged_path}/tidelift", "+x"
  end

  # No zap stanza required
end
