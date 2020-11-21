cask "quaternion" do
  version "0.0.9.4"
  sha256 "e33ecf94cbafedd3f665db8ff52764ee403af3acb45aff676788ec96225e8d03"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast "https://github.com/quotient-im/Quaternion/releases.atom"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
