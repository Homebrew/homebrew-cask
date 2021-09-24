cask "quaternion" do
  version "0.0.95"
  sha256 "47c6ae19a1cb7cb266f277d79672297b8eb8b911e0ee7cf527f91533463d546d"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
