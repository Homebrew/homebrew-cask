cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.14.1"
  sha256 arm:   "f4a612aa1d94a5f22001a5743210be9809054877e934cc0ce9a1ebddf31f58aa",
         intel: "72a0871a97eb7f5f39a677c3969be8a0d07773e339e0a64106c4e6ed3aeb7d79"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  livecheck do
      url :url
      strategy :github_latest
  end

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
