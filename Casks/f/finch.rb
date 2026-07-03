cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.17.2"
  sha256 arm:   "142e2e8f30fb218e382e1cb438e3b93064eee31adfed6b652eb02308517bcdaa",
         intel: "9f6b69c3d6f8b445777f3f236c268601d67e8e8b110d6a94691b3de06baed087"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
