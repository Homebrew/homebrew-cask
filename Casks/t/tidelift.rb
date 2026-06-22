cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.65"
  sha256 arm:          "9f10c3e51fc5c03e3f6bdea3434ac99c4852303bdd0feaaf9af0553f0fccdaac",
         intel:        "ede492f3fb8d607157454eaf7f444aac93592895d2a7f94d35fe79f234039852",
         arm64_linux:  "99c82f6986c58d74f29ba86a6675cd493d3bafae82d47207314a1152f1379114",
         x86_64_linux: "13ce342149d2d239b3c036b026eb5a5ce90f1fb55240767875313d414958e320"

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
