cask "gopher64" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip"

  version "1.2.1"
  sha256 arm:          "99658682b412850f354179111274c66a842718a4da948c6a2a229aa3afd3c8e0",
         arm64_linux:  "2ffe4d27665dd19bb47d55e2dec3e38817546f45b41bf13f340ae5d30928a603",
         x86_64_linux: "4822cbb76298b59f4df65560f285acd29c3e8fd7cb714637794ddd15d6132369"

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
