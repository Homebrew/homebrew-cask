cask "aware" do
  version "1.2.0"
  sha256 "f39d1fabc3a80df649bbb7aa6c596d0fc5082d8718d442ba857ec49bf7fe5eab"

  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.app.zip",
      verified: "github.com/josh/Aware/"
  name "Aware"
  desc "Menubar app to track active computer use"
  homepage "https://awaremac.com/"

  depends_on macos: ">= :sonoma"

  app "Aware.app"

  zap trash: [
    "~/Library/Application Scripts/com.awaremac.Aware",
    "~/Library/Containers/com.awaremac.Aware",
  ]
end
