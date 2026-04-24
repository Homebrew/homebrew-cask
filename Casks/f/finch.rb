cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.16.0"
  sha256 arm:   "fa66166add82d6ebb7059b32766f1e719b3b328a19bfcd8dbcece7aaa3c43fb7",
         intel: "a191d18e60c956435836b497e9ce1ede4f26d7a75af9b7d7163a164ca7d71a4c"

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
