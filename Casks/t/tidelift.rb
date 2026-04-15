cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.55"
  sha256 arm:          "4cf05c4af144ea9634aaefd962d663604ca3e41cfd8b6aec0c55b55d317ff953",
         intel:        "2d1c4a565b12e12fc5a95761a80769e85b77403d831686e87392386f896477a5",
         arm64_linux:  "5525d8087fca3103809e6e8e726d4218bf249c8248f6bf10797dbc0fb90d5bfb",
         x86_64_linux: "f5c7f2f01169c63336ea5cc6fa42fed53f72986e6641957f0a052c709901cd86"

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
