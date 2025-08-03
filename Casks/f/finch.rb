cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.3"
  sha256 arm:   "85a3ee0016b9d0019da1b9bfbc0a3cf441e4269b9fea9f7f459b15fbad7fd6f1",
         intel: "8343b6c33170363a62afa206fc1753d6e8a9fa58dc20a4218818a116a5ea5f90"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
