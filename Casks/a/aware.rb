cask "aware" do
  version "1.1.1"
  sha256 "d436d21ca4915feaa5b34426dc82c9c3a90d78cce8792506be4d3c9c13ff1ada"

  url "https://github.com/josh/Aware/releases/download/v#{version}/Aware.zip",
      verified: "github.com/josh/Aware/"
  name "Aware"
  desc "Menubar app to track active computer use"
  homepage "https://awaremac.com/"

  depends_on macos: ">= :ventura"

  app "Aware.app"

  zap trash: [
    "~/Library/Application Scripts/com.awaremac.Aware",
    "~/Library/Containers/com.awaremac.Aware",
  ]
end
