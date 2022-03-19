cask "bzflag" do
  version "2.4.22"
  sha256 "3108313610c5e26fba5599aa83ef0ad1d276b7cebf9d38f04a1bc72a4c3c2060"

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  name "BZFlag"
  desc "3D multi-player tank battle game"
  homepage "https://www.bzflag.org/"

  livecheck do
    url "https://github.com/BZFlag-Dev/bzflag"
    strategy :github_latest
  end

  app "BZFlag-#{version}.app"
end
