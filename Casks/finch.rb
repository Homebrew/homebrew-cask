cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "7de79a2df664fe5d0dc498aa49292e0bb4daa6f6ec3f94d0eada740bb49d2c45",
         intel: "b2a37b7e0225018017838d34339a699f3a52df9c34b33637283ef402fcb9c55c"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall pkgutil: "org.Finch.v#{version}"

  zap trash: "~/.finch"
end
