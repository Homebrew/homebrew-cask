cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.61"
  sha256 arm:          "372c7d69091e0fd90e5bcbc0313df3ac2ed5492dad18c7bbfde56c817ede1f6c",
         intel:        "f8f3d7d633662c507a3ba555b72402a7d8aa7213d6cca23ab36acf7a1c0eb502",
         arm64_linux:  "e2a1f3fc65eb7aa8649a1761067192f281465bb479c3c23aa7a38bbc833114ff",
         x86_64_linux: "7629107aa5993ade507e7575099a8ffff151f996968fd6a8e322a613c64f7b07"

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
