cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.35"
  sha256 arm:          "7b15f3cbb9608e9c048ce7544f684b56f1059c5d26d4d4a3dbc3b36604a0524a",
         intel:        "fa295ca4a36bd2e27b5e50c3060b6053889e8a41cf6b0a0588f6d0b9d7a3abeb",
         arm64_linux:  "db6f7ee430e20f87ac69f0893478cc75e48ebd3cedd11a16bee593700184f2b7",
         x86_64_linux: "12ef3ba42e7f81511d7126707524dcf1c2cd60c3e3878ba03b45aebac3a834e9"

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
