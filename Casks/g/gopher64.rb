cask "gopher64" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip"

  version "1.1.42"
  sha256 arm:          "a433a5324094fe883ed8df2e3d2300f4cb22789d6020edeee9dd0b192521f1ce",
         arm64_linux:  "1232b3a20bb8b742547c355970e815dd5123d05df3ead3db95fbea45000ff502",
         x86_64_linux: "1ec04481d40eab6d9d585270c08fd7d5451811d3756276364ce04998928d991d"

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
