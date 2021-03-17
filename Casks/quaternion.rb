cask "quaternion" do
  version "0.0.9.4e"
  sha256 "9df5cec6517c390edce156033101460b0e256ec9aefcf6d8ac8ae91ef1191f1a"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*[a-z]?)$/)
  end

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
