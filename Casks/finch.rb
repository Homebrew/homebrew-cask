cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "aa1e654748f723dc08d3d41bd1d081bf51cf7375ac5dc55fd1e8a9d3598eac18",
         intel: "ba25fcfe070ed07fc9ed08eeaf116f855c99b7a19af68d242c4853b44c7c292e"

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
