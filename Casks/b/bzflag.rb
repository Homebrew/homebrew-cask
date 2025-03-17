cask "bzflag" do
  version "2.4.30"
  sha256 "4a63f7ef575bb8e3e6507d8f999cbd43e9ccb92fcf4ebfb877d3c9ccb4bbc2b2"

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  name "BZFlag"
  desc "3D multi-player tank battle game"
  homepage "https://www.bzflag.org/"

  livecheck do
    url "https://download.bzflag.org/bzflag/macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :high_sierra"

  app "BZFlag-#{version}.app"

  zap trash: [
    "~/Library/Application Support/BZFlag",
    "~/Library/Saved Application State/org.bzflag.BZFlag.savedState",
  ]
end
