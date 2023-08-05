cask "elektron-transfer" do
  version "1.6.7"
  sha256 "fe933767e5717e78c99888431867e7c164d72a1ffc6e80f9d7fdd1d8691fc7b7"

  url "https://cdn.www.elektron.se/media/downloads/transfer/Elektron_Transfer_#{version}.dmg"
  name "elektron-transfer"
  desc "Elektron Transfer tool for transferring samples, presets, sounds, projects and firmware updates to " \
       "Analog Rytm MKI/MKII, Analog Four MKI/MKII, Analog Heat MKI/MKII, Analog Keys, Digitakt, Digitone, " \
       "Digitone Keys, Model:Samples, Model:Cycles, Syntakt, and Analog Heat +FX"
  homepage "https://www.elektron.se/cz/download-support-transfer"

  livecheck do
    url "https://www.elektron.se/cz/download-support-transfer"
    strategy :page_match
    regex(%r{https://cdn.www.elektron.se/media/downloads/transfer/Elektron_Transfer_([\d.]+).dmg}i)
  end

  app "Transfer.app"
end
