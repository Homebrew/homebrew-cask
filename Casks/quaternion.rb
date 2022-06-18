cask "quaternion" do
  version "0.0.95.1-flatpak"
  sha256 "2d657e54bc7549015274df073881933327b3a17ddf816af951e8ee05347918d9"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
