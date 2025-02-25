cask "bzflag" do
  version "2.4.28"
  sha256 "f6d1b39a9262bd1338570cad1260d84b8e3bc4009026b4230219a46a718998b0"

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
