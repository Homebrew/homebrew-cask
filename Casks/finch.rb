cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "0274a41c2c86b6e3eb762b16223869fdeec7811c4c3e7703ce2b8888cb61976c",
         intel: "e4c8f7c944c75c5b748c54ab58e1bc73337c22bbc82f94d75171533a6dddf550"

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
