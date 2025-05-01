cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "026a36516bc9887d0161a497895cee4e08145febed1a9aee352987affb5e0e6c",
         intel: "4149c873a619373b3cf5c9460908e2ee77026f2113c21cdd457672539cd77778"

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
