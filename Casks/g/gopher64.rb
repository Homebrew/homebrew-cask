cask "gopher64" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip"

  version "1.2.2"
  sha256 arm:          "8aa8fc44e0f41b0306d5e441a3413a0d1a3d3e7016257d2a57c88d5229284e2c",
         arm64_linux:  "61e9f61eaa799bf16d017e029a1809040c23fb1bb0d04538e613957c76bc49ae",
         x86_64_linux: "da9cfd625394d317592d2e1e0d47e1bf61c3f294eccb5c59a806f68bb5a77b85"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    app "Gopher64.app"

    zap trash: [
      "~/Library/Application Scripts/io.github.gopher64.gopher64",
      "~/Library/Containers/io.github.gopher64.gopher64",
    ]
  end
  on_linux do
    binary "gopher64-linux-#{arch}", target: "gopher64"

    zap trash: [
      "~/.cache/gopher64",
      "~/.config/gopher64",
      "~/.local/share/gopher64",
    ]
  end

  url "https://github.com/gopher64/gopher64/releases/download/v#{version}/gopher64-#{os}-#{arch}#{url_end}"
  name "Gopher64"
  desc "N64 emulator"
  homepage "https://github.com/gopher64/gopher64"

  livecheck do
    url :url
    strategy :github_latest
  end
end
