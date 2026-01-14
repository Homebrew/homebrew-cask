cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "13a659c862d2daf8daf752c5a0741176a4cdd7a0979f47130c5fdbafd11d7fdd",
         intel: "4fbc6a98d32ef652dab6d4fb2ca2ed6b9fcc10771c5ec8b0cad48f32b46c90ed"

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
