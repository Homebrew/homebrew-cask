cask "quaternion" do
  version "0.0.9.5-beta2"
  sha256 "e01540c36559f445075c4f870205fb938362260282bcdc4e06a729dab7601f9e"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast "https://github.com/quotient-im/Quaternion/releases.atom"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
