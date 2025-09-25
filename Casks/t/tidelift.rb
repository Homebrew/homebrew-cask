cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.31"
  sha256 arm:          "a53127fbf0f6878073cb76a5b7864afac82f06f90daf9206a4eb8b3eae1a4837",
         intel:        "834596d3bdfe05816c952d104e3b9379641f6f0424bd608a70682739c8b224f7",
         arm64_linux:  "d26339afb2729833f4d05aaf3b040487a5f8de5e9bb88a25968d6835f63b5a83",
         x86_64_linux: "f9c36800b6452d1fe73bbc54000372fc95653d6771590191da78740dbbbd3f4a"

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
