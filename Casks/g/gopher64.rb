cask "gopher64" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip"

  version "1.2.4"
  sha256 arm:          "15ac6dcc135c4de5ed5160067d0dde1f9cdbb06ee6361fa66b9ef720bf6189c4",
         arm64_linux:  "738390197d834093246d1055b578399c7935a873b855edf5a4a442c57012144b",
         x86_64_linux: "d8d342936d5178ec9eccf7e9d793ae11b8fae57c9b98481d65cc3542901d9ab3"

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
