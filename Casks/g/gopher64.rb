cask "gopher64" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip"

  version "1.1.40"
  sha256 arm:          "af21a52ebde87c1339e4f5256ae08add1be5c684f362b128c164fe660e1c87f8",
         arm64_linux:  "2887ba42a8cd20f7700de1fe3127743ffd1433b9525c962bc3905b6f007dee6d",
         x86_64_linux: "3da4a1e6d3a9039ce45493b53f26898c35307e026daaf8f9d560757788ba7bb9"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :sequoia

    app "Gopher64.app"

    zap trash: "~/Library/Containers/io.github.gopher64.gopher64"
  end
  on_linux do
    binary "gopher64-linux-#{arch}", target: "gopher64"
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
