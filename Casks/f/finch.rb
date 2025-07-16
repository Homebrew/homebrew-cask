cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "c9c2a924573d96c28e47e3e356a3a364522e7756f52b9e16f03929a086754dd3",
         intel: "a95a0f87fa56d9495fabeec9751ff51109a5066d43410f5c69d8601010e89915"

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
