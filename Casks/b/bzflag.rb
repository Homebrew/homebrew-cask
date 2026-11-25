cask "bzflag" do
  version "2.4.32"
  sha256 "23166216c93b394577d739a12d30457c112afa88d931161d3e426177ec42442c"

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  name "BZFlag"
  desc "3D multi-player tank battle game"
  homepage "https://www.bzflag.org/"

  livecheck do
    url "https://download.bzflag.org/bzflag/macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on :macos

  app "BZFlag-#{version}.app"

  zap trash: [
    "~/Library/Application Support/BZFlag",
    "~/Library/Saved Application State/org.bzflag.BZFlag.savedState",
  ]
end
