cask "silicon" do
  version "1.0.3"
  sha256 "4f6cf3f6b6cf0b8f067995a292538f122278226fa067427bf184b179076cbf79"

  url "https://github.com/DigiDNA/Silicon/releases/download/#{version}/Silicon.app.zip"
  appcast "https://github.com/DigiDNA/Silicon/releases.atom"
  name "Silicon"
  desc "Identify Intel-only apps"
  homepage "https://github.com/DigiDNA/Silicon"

  depends_on macos: ">= :high_sierra"

  app "Silicon.app"

  zap trash: [
    "~/Library/Caches/com.DigiDNA.Silicon",
    "~/Library/Saved Application State/com.DigiDNA.Silicon.savedState",
  ]
end
