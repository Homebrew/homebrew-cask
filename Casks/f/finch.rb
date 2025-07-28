cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.1"
  sha256 arm:   "7ab653bd07b6cc4723fbb31b1d8788f535a3a75563abca40df4052c7087340a8",
         intel: "579cb4b7b462cb878876f537ab6f9921b9efdf6e94f6ff898255fff7dfbdd914"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  livecheck do
    url :url
    strategy :git
  end

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
