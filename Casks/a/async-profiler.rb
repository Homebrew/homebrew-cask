cask "async-profiler" do
  arch arm: "arm64", intel: "x64"

  platform = on_system_conditional macos: "macos", linux: "linux-#{arch}"
  ext = on_system_conditional macos: "zip", linux: "tar.gz"

  version "4.2.1"
  sha256 arm:          "37482fada5ce53595257546178c0fb753696cec24969b3e8c97884e2bf1aa4b8",
         intel:        "37482fada5ce53595257546178c0fb753696cec24969b3e8c97884e2bf1aa4b8",
         arm64_linux:  "b7f58eead5973d5b04a920380f278e75cf190b49435974c3569869d298639664",
         x86_64_linux: "e4d764f27d06a1d339d13df4f2e1599558b69fcfb01d4c811d13b8c895d7ea63"

  url "https://github.com/async-profiler/async-profiler/releases/download/v#{version}/async-profiler-#{version}-#{platform}.#{ext}"
  name "async-profiler"
  desc "Low overhead sampling profiler for Java"
  homepage "https://github.com/async-profiler/async-profiler"

  binary "async-profiler-#{version}-#{platform}/bin/asprof"
  binary "async-profiler-#{version}-#{platform}/bin/jfrconv"

  # No zap stanza required

  caveats <<~EOS
    To use async-profiler, run:
      asprof -d 30 -f flamegraph.html <PID>
    See documentation at:
      https://github.com/async-profiler/async-profiler
  EOS
end
