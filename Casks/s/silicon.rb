cask "silicon" do
  version "1.0.5"
  sha256 "f8f6acfdc8378bca0429d52e34d48275c22213617dbe09055798132921c10586"

  url "https://github.com/DigiDNA/Silicon/releases/download/#{version}/Silicon.app.zip"
  name "Silicon"
  desc "Identify Intel-only apps"
  homepage "https://github.com/DigiDNA/Silicon"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Silicon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.silicon.sfl*",
    "~/Library/Caches/com.DigiDNA.Silicon",
    "~/Library/Saved Application State/com.DigiDNA.Silicon.savedState",
  ]
end
