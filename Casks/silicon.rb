cask "silicon" do
  version "1.0.4"
  sha256 "25d113f4709a6b0af6f8ef626879e3ef9bebc9922b81b9df2411785eec001210"

  url "https://github.com/DigiDNA/Silicon/releases/download/#{version}/Silicon.app.zip"
  name "Silicon"
  desc "Identify Intel-only apps"
  homepage "https://github.com/DigiDNA/Silicon"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Silicon.app"

  zap trash: [
    "~/Library/Caches/com.DigiDNA.Silicon",
    "~/Library/Saved Application State/com.DigiDNA.Silicon.savedState",
  ]
end
