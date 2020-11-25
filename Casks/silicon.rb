cask "silicon" do
  version "1.0.0"
  sha256 "f06a8ab940db1a28824d765bb2935689b4655ccbde176be80fe4de813ce974e0"

  url "https://github.com/DigiDNA/Silicon/releases/download/#{version}/Silicon.app.zip"
  appcast "https://github.com/DigiDNA/Silicon/releases.atom"
  name "Silicon"
  desc "Identify Intel-only apps"
  homepage "https://github.com/DigiDNA/Silicon"

  app "Silicon.app"

  zap trash: "~/Library/Caches/com.DigiDNA.Silicon"
end
