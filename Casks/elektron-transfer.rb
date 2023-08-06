cask "elektron-transfer" do
  version "1.6.7"
  sha256 "fe933767e5717e78c99888431867e7c164d72a1ffc6e80f9d7fdd1d8691fc7b7"

  url "https://cdn.www.elektron.se/media/downloads/transfer/Elektron_Transfer_#{version}.dmg"
  name "Elektron Transfer"
  desc "Transfer samples, presets, sounds, projects and firmware updates to Elektron devices"
  homepage "https://www.elektron.se/en/download-support-transfer"

  livecheck do
    url :homepage
    regex(/Elektron[._-]Transfer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Transfer.app"
end
