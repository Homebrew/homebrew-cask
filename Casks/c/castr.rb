cask "castr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "9d09511986d76f8ae19e9dfe62244b3cf47956d05ef947e1550293853b6c2b6e",
         intel: "24ca7a44cc0d730d5d222ac2bc73bcb9abae43d6798d34725c1c3fc132b36948"

  url "https://download.todesktop.com/210610elr9v3cm6/Castr%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/210610elr9v3cm6/"
  name "castr"
  desc "Desktop application for controlling Castr streaming platform"
  homepage "https://castr.io/"

  livecheck do
    url "https://download.todesktop.com/210610elr9v3cm6/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Castr.app"

  zap trash: [
    "~/Library/Application Support/Castr",
    "~/Library/Logs/Castr",
  ]
end
