cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.3"
  sha256 arm:   "5b338ec9482e6bacce44b64c332fbf031469cf4571336dbb47303ab13637cb18",
         intel: "08f4bd7dab9396e2b75bcd93f0e5a4fca8f43790e19f697466e678877ec1748e"

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
