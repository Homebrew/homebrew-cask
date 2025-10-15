cask "tidelift" do
  arch arm: "_arm"
  os macos: "darwin", linux: "linux"

  version "1.16.34"
  sha256 arm:          "031f0545222ef4045c85b04f745db9ee0c743a459b8be715677ce435fb73462c",
         intel:        "b6b1328836cdcde93dfafd7010cae539fbee770d27e138eaeb65d33d284ca046",
         arm64_linux:  "cac73fdf9de2abb9acdf412b9b094c40d0fca681faf21942ed092131af9625f8",
         x86_64_linux: "71160a10009c0e4dd74756eac67154101ea3056233cfc624b7077c3b277f2d1a"

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
