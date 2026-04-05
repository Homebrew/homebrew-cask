# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "serialprobe" do
  version "1.0.0"
  sha256 "99c61437635be8ef78158f37d48a21f5d560854fae4d2b50ad5d4f59e9fa5952"

  url "https://github.com/RayanceKing/SerialProbe4Mac/releases/download/v#{version}/SerialProbe.dmg"
  name "SerialProbe"
  desc "Serial port probe / debugging tool"
  homepage "https://github.com/RayanceKing/SerialProbe4Mac"

  depends_on macos: ">= :sonoma"

  app "SerialProbe.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
