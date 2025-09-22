cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.27.0"
  sha256 arm:          "b09179f0ee210ca8ff0d25073caa5939ca2ab1c9f69db70d52daa5d477860acb",
         intel:        "f5188688298a1b2bb7f5888087be069f28b5c920a3999a942dfd221300894063",
         arm64_linux:  "4147072557995549968b4348b070dd14ca9ff5e73a13436ede326729f030963b",
         x86_64_linux: "e839fe6309e51da3ffae75ac83841d7009b0d666e6f59c43132b1e93eb23fe7c"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  auto_updates true

  binary "dda"

  uninstall script: {
    executable: "dda",
    args:       ["self", "remove"],
  }

  # No zap stanza required
end
