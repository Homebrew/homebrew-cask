cask "async-profiler" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux-#{arch}"

  ext = on_system_conditional macos: "zip", linux: "tar.gz"

  version "4.2.1"

  on_macos do
    sha256 "37482fada5ce53595257546178c0fb753696cec24969b3e8c97884e2bf1aa4b8"
  end
  on_linux do
    sha256 arm64_linux:  "b7f58eead5973d5b04a920380f278e75cf190b49435974c3569869d298639664",
           x86_64_linux: "e4d764f27d06a1d339d13df4f2e1599558b69fcfb01d4c811d13b8c895d7ea63"
  end

  url "https://github.com/async-profiler/async-profiler/releases/download/v#{version}/async-profiler-#{version}-#{os}.#{ext}"
  name "async-profiler"
  desc "Low overhead sampling profiler for Java"
  homepage "https://github.com/async-profiler/async-profiler"

  binary "async-profiler-#{version}-#{os}/bin/asprof"
  binary "async-profiler-#{version}-#{os}/bin/jfrconv"

  # No zap stanza required
end
