cask "quaternion" do
  version "0.0.95.1"
  sha256 "d2f80cfd17ab25b4062032afa76aa7bf509d32fb72c91858ab04347e216df9a7"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  livecheck do
    url "https://github.com/quotient-im/Quaternion/releases"
    strategy :page_match
    regex(/href=.*?quaternion[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
